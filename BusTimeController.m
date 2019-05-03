//
//  TimePointController.m
//  SimpleBusTime
//
//  Created by Michael Rockhold on 4/2/08.
//  Copyright 2008 __MyCompanyName__. All rights reserved.
//

#import "BusTimeController.h"
#import "Timepoint.h"
#import "TimepointsDownloader.h"
#import "MybusService.h"

#include "Region.h"

struct RegionName regions[] = 
{
	{ @"Seattle", @"Seattle" },
	{ @"NorthSeattle", @"North Seattle" },
	{ @"NorthEastSide", @"North Eastside" },
	{ @"EastSide", @"Eastside" },
	{ @"SouthSeattle", @"South Seattle" },
	{ @"SouthEastSide", @"South Eastside" },
	{ @"SouthKingCounty", @"South King County" },
	{ @"EastKingCounty" @"East King County" }
};


@implementation BusTimeController
@dynamic timepoints;

#pragma mark -
#pragma mark Startup and Shutdown

- (id) init
{
    if (self = [super init])
		{
		_timepoints = [[NSMutableArray alloc] init];
		myRunningDownloaders = 0;
			
		[MybusDotNetSvc initialize];
		myMybusDotNetSoap = [MybusDotNetSvc MybusDotNetSoap];
		}
    return self;
}

- (void) dealloc
{
	@synchronized(_timepoints)
		{
		[_timepoints release];
		}
    [transitAgency release];
	[myMybusDotNetSoap release];
    [super dealloc];
}


- (void)awakeFromNib
{
	[self displayServerTime];
	NSArray* agencies = (NSArray*)[MybusService getAgencies];
	transitAgency = [(NSString*)[agencies objectAtIndex:0] retain];
}

- (void)displayServerTime
{
	NSNumber* serverTimeObj = (NSNumber*)[MybusService getTime];
	
	if (serverTimeObj != nil)
		{
		[myDisconnectedIcon setHidden:TRUE];
		[myConnectedIcon setHidden:FALSE];
		[myServerTime setObjectValue:[NSDate dateWithTimeIntervalSince1970:([serverTimeObj doubleValue] / 1000)]];
		}
	else
		{
		[myConnectedIcon setHidden:TRUE];
		[myDisconnectedIcon setHidden:FALSE];
		[myServerTime setStringValue:@"-no connection-"];
		}
}

#pragma mark -
#pragma mark Simple Accessors

- (NSMutableArray *) timepoints
{
	return _timepoints;
}


- (void) addTimepoint:(NSString*)timepointName regionCode:(int)regionCode description:(NSString*)description
{
	@try
	{
		Timepoint* aTimepoint = [[Timepoint alloc] initWithContext:self name:timepointName regionCode:regionCode address:description];
		
		@synchronized(_timepoints)
		{
			NSIndexSet* indexes = [NSIndexSet indexSetWithIndex:[_timepoints count]];	
			
			[self willChange:NSKeyValueChangeRemoval valuesAtIndexes:indexes forKey:@"timepoints"];
			
			[_timepoints addObject:aTimepoint];
			
			[self didChange:NSKeyValueChangeRemoval valuesAtIndexes:indexes forKey:@"timepoints"];
		}
		
	}
	@catch (NSException * e)
	{
		NSLog(@"addTimepoint exception: %0", e);
	}
	@finally
	{
		//
	}
}


- (void)downloadTimepoints:(id)sender
{	
	int i;
	int count = sizeof(regions) / sizeof(struct RegionName);
	for (i = 0; i < count; i++)
		{
		TimepointsDownloader* downloader = [[TimepointsDownloader alloc] initWithRegion:i];
		if ( downloader )
			{
			[NSThread detachNewThreadSelector:@selector(runSynchronously:) toTarget:downloader withObject:self];
			myRunningDownloaders++;				
			}
		}
	if ( myRunningDownloaders > 0 )
		{
		[myDownloadingProgressIndicator setHidden:NO];
		[myDownloadingProgressIndicator startAnimation:self];
		}
}

- (void)cancelDownloading:(id)sender
{
	// TODO: how?
}

- (void)informConnectionStatus:(int)region status:(int)code
{
	@synchronized(self)
		{
		NSString* status = nil;
		switch (code)
			{
			case TIMEPOINTS_DOWNLOADER_CONNECTING:
					status = @"Connecting";
					break;
			case TIMEPOINTS_DOWNLOADER_CONNECTED:
					status = @"Connected";
					break;
			case TIMEPOINTS_DOWNLOADER_RECEIVING:
					status = @"Receiving";
					break;
			case TIMEPOINTS_DOWNLOADER_SUCCEEDED:
					status = @"Succeeded";
					break;
			case TIMEPOINTS_DOWNLOADER_FAILED:
					status = @"Failed";
					break;
			case TIMEPOINTS_DOWNLOADER_UNDEFINED:
			default:
					status = @"???";
					break;
			[myStatusLine setStringValue:[NSString stringWithFormat:@"%@ %@",
										  regions[region].friendlyName, 
										  status]];
			}
		
		if ( TIMEPOINTS_DOWNLOADER_SUCCEEDED == code || TIMEPOINTS_DOWNLOADER_FAILED == code )
			{
			myRunningDownloaders--;
			if ( myRunningDownloaders < 1 )
				{
				[myDownloadingProgressIndicator stopAnimation:self];
				[myDownloadingProgressIndicator setHidden:YES];
				}
			}
		}
}

- (NSArray*) GetRawArrivalData:(NSString*)timepoint 
{
	/*
	 For a given transit agency name, timepoint, and time window in minutes, get the departure times for that timepoint. 
	 
	 http://ws.its.washington.edu:9090/transit/mybus/services/MybusService?method=getEventData&in0=30&in1=-10&in2=5903&in3=http://transit.metrokc.gov 
	 (in this case, the time window is set for 10 minutes in the past, 
	 30 minutes in the future, and the timepoint is 5903)
	 
	 + (id) getEventData
	 :(NSString*)in_in0 
	 timePoint	:(SInt32)in_in1 
	 inPast		:(SInt32)in_in2
	 infuture	:(SInt32)in_in3
	 */
	return [MybusService getEventData:transitAgency in_in1:[timepoint intValue] in_in2:5 in_in3:30]; // intf:ArrayOfEventEstimate
}
@end
