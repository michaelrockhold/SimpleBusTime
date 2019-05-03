//
//  Timepoint.m
//  SimpleBusTime
//
//  Created by Michael Rockhold on 4/2/08.
//  Copyright 2008 __MyCompanyName__. All rights reserved.
//

#import "Timepoint.h"
#import "BusTimeController.h"
#import "ArrivalInfo.h"
#include "Region.h"

extern struct RegionName regions[];

@implementation Timepoint

@dynamic name;
@dynamic region;
@dynamic address;
@dynamic arrivals;

- (id) initWithContext:(BusTimeController*)controller name:(NSString*)name regionCode:(int)regionCode address:(NSString*)address
{
    if (self = [super init])
		{
		myController = [controller retain];
		
		myName = [name retain];
		myRegionCode = regionCode;
		myAddress = [address retain];
		myLastUpdateStamp = nil;
		
		myArrivals = [[NSMutableArray alloc] init];
		}
    return self;
}

- (void) dealloc
{
	[myController release];
    [myName release];
    [myAddress release];
    [myArrivals release];
    if ( myLastUpdateStamp != nil ) [myLastUpdateStamp release];
    [super dealloc];
}

- (NSString*)name
{
    return myName;
}
- (NSString*)region
{
    return regions[myRegionCode].friendlyName;
}
- (NSString*)address
{
    return myAddress;
}

- (NSArray*)arrivals
{
	// compare the timestamp of the last update with the current time to see if we need to update
	const NSTimeInterval TWO_MINUTES = 60 * 2;
	
	if ( myLastUpdateStamp == nil || -[myLastUpdateStamp timeIntervalSinceNow] > TWO_MINUTES )
		{
		[myArrivals release];
		myArrivals = [[NSMutableArray alloc] init];

		[NSThread detachNewThreadSelector:@selector(downloadArrivals:) toTarget:self withObject:nil];
		}
    return myArrivals;
}



- (void) downloadArrivals:(id)ignore
{	
	@try {
		
	NSArray* freshArrivals = [myController GetRawArrivalData:myName];
	
	if ( freshArrivals != nil )
		{
		myLastUpdateStamp = [NSDate date];
		
		NSEnumerator* enumerator = [freshArrivals objectEnumerator];
		NSDictionary* aRawArrivalObject;
		
		while (aRawArrivalObject = (NSDictionary*) [enumerator nextObject])
			{
			ArrivalInfo* anArrival = [[ArrivalInfo alloc] initWithSoapDictionary:aRawArrivalObject];
			@synchronized(myArrivals)
				{
				NSIndexSet* indexes = [NSIndexSet indexSetWithIndex:[myArrivals count]];	
				
				[self willChange:NSKeyValueChangeRemoval valuesAtIndexes:indexes forKey:@"arrivals"];
				
				[myArrivals addObject:anArrival];
				
				[self didChange:NSKeyValueChangeRemoval valuesAtIndexes:indexes forKey:@"arrivals"];
				}
			}
		}
	}
	@catch (NSException * e)
	{
		NSLog(@"exception in downloadArrivals: %@", e);
	}
	@finally
	{
		//
	}
}

@end
