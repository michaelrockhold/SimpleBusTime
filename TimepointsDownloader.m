//
//  TimepointsDownloader.m
//  SimpleBusTime
//
//  Created by Michael Rockhold on 4/6/08.
//  Copyright 2008 __MyCompanyName__. All rights reserved.
//

#import "TimepointsDownloader.h"
#import "BusTimeController.h"
#include "Region.h"

extern struct RegionName regions[];

@implementation TimepointsDownloader

- (id) init
{
	return [self initWithRegion:0];
}

- (id)initWithRegion:(int)regionNumber
{
    if (self = [super init])
		{
		myRegion = regionNumber;
		}
    return self;
}

- (void) dealloc
{
	[self cancel];
    [super dealloc];
}

- (int)RegionNumber
{
	return myRegion;
}

/* Connection Management Methods */

- (void)run:(BusTimeController*)controller
{
	myController = controller;
	
	connectionData = [[NSMutableData alloc] init];
		
	NSURL* url = [NSURL URLWithString:[NSString stringWithFormat:@"http://mybus.org/metrokc/region.jsp?region=%@", regions[myRegion].name]];
    NSURLRequest* connectionRequest = [NSURLRequest requestWithURL:url cachePolicy:NSURLRequestReloadIgnoringCacheData timeoutInterval:60.0];
    downloadConnection = [[NSURLConnection alloc] initWithRequest:connectionRequest delegate:self];

    if ( downloadConnection )
		{
		[myController informConnectionStatus:myRegion status:TIMEPOINTS_DOWNLOADER_CONNECTING];
		} 
	else
		{
        [self endDownloadConnection];
		}
}

- (void)runSynchronously:(BusTimeController*)controller
{
	myController = controller;
	NSError* error;
	NSURLResponse* response;
	
	NSURL* url = [NSURL URLWithString:[NSString stringWithFormat:@"http://mybus.org/metrokc/region.jsp?region=%@", regions[myRegion].name]];
    NSURLRequest* connectionRequest = [NSURLRequest requestWithURL:url cachePolicy:NSURLRequestReloadIgnoringCacheData timeoutInterval:60.0];
	
	NSData* regionData = [NSURLConnection sendSynchronousRequest:connectionRequest returningResponse:&response error:&error];
	if ( nil != regionData )
		{
		[self parseReturnedData:regionData];
		}
	else
		{
		[controller informConnectionStatus:myRegion status:TIMEPOINTS_DOWNLOADER_FAILED];
		}
}

- (void)cancel
{
	[myController informConnectionStatus:myRegion status:TIMEPOINTS_DOWNLOADER_FAILED];
	[downloadConnection cancel];
	[self endDownloadConnection];
}

- (void)endDownloadConnection
{
    [downloadConnection release];
    downloadConnection = nil;
	
    [connectionResponse release];
    connectionResponse = nil;
	
    [connectionData release];
    connectionData = nil;
}


/* NSURLConnection Delegate Methods */

- (void)connection:(NSURLConnection*)connection didReceiveResponse:(NSURLResponse*)response
{
    [connectionResponse release];
    connectionResponse = [response retain];
    [connectionData setLength:0];
	
	[myController informConnectionStatus:myRegion status:TIMEPOINTS_DOWNLOADER_CONNECTED];
}

- (void)connection:(NSURLConnection*)connection didReceiveData:(NSData*)data
{
    [connectionData appendData:data];
	
	[myController informConnectionStatus:myRegion status:TIMEPOINTS_DOWNLOADER_RECEIVING];
}

- (void)connectionDidFinishLoading:(NSURLConnection*)connection
{
	[self parseReturnedData:connectionData];

    [self endDownloadConnection];			
}

- (void)parseReturnedData:(NSData*)data
{
    NSString *dataString = [[[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding] autorelease];

	//	<td><a href="./avl.jsp?id=4041">YESLER WY &amp; POST AV</a></td>
	NSScanner* scanner = [NSScanner scannerWithString:dataString];
	while ([scanner isAtEnd] == NO)
		{
		if ( [scanner scanUpToString:@"<td><a href=\"./avl.jsp?id=" intoString:nil] == NO )
			break;

		[scanner scanString:@"<td><a href=\"./avl.jsp?id=" intoString:nil];
		NSString* theTimepointName;
		NSString* theAddress;
		
		[scanner scanUpToString:@"\">" intoString:&theTimepointName];
		[scanner scanString:@"\">" intoString:nil];
		[scanner scanUpToString:@"<" intoString:&theAddress];
		
		theAddress = [theAddress stringByReplacingOccurrencesOfString:@"&amp;" withString:@"&"];
			
		[myController addTimepoint:theTimepointName regionCode:myRegion description:theAddress];		
		}
		
	//[myController informConnectionStatus:myRegion status:TIMEPOINTS_DOWNLOADER_SUCCEEDED];
}

- (void)connection:(NSURLConnection*)connection didFailWithError:(NSError*)error
{
    [self endDownloadConnection];
	[myController informConnectionStatus:myRegion status:TIMEPOINTS_DOWNLOADER_FAILED];
}

- (NSCachedURLResponse*)connection:(NSURLConnection*)connection willCacheResponse:(NSCachedURLResponse*)cachedResponse
{
    return nil;     // Never cache
}

@end
