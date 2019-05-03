//
//  TimepointsDownloader.h
//  SimpleBusTime
//
//  Created by Michael Rockhold on 4/6/08.
//  Copyright 2008 __MyCompanyName__. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@class BusTimeController;

enum TimepointsDownloaderStatusCode 
{
	TIMEPOINTS_DOWNLOADER_UNDEFINED = 0,
	TIMEPOINTS_DOWNLOADER_CONNECTING,
	TIMEPOINTS_DOWNLOADER_CONNECTED,
	TIMEPOINTS_DOWNLOADER_RECEIVING,
	TIMEPOINTS_DOWNLOADER_SUCCEEDED,
	TIMEPOINTS_DOWNLOADER_FAILED
};

@interface TimepointsDownloader : NSObject
{
	int myRegion;
	BusTimeController* myController;
	
	NSURLResponse* connectionResponse;
	NSMutableData* connectionData;
	NSURLConnection* downloadConnection;
}

- (id)initWithRegion:(int)regionNumber;

- (int)RegionNumber;
- (void)run:(BusTimeController*)controller;
- (void)runSynchronously:(BusTimeController*)controller;
- (void)cancel;
- (void)endDownloadConnection;
- (void)connection:(NSURLConnection*)connection didReceiveResponse:(NSURLResponse*)response;
- (void)connection:(NSURLConnection*)connection didReceiveData:(NSData*)data;
- (void)connectionDidFinishLoading:(NSURLConnection*)connection;
- (void)connection:(NSURLConnection*)connection didFailWithError:(NSError*)error;
- (NSCachedURLResponse*)connection:(NSURLConnection*)connection willCacheResponse:(NSCachedURLResponse*)cachedResponse;

- (void)parseReturnedData:(NSData*)data;

@end
