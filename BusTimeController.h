//
//  TimePointController.h
//  SimpleBusTime
//
//  Created by Michael Rockhold on 4/2/08.
//  Copyright 2008 __MyCompanyName__. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "MybusDotNetSvc.h"

@class Timepoint;
@class TimepointsDownloader;

@interface BusTimeController : NSObject
{
	MybusDotNetSoap* myMybusDotNetSoap;
	NSMutableArray * _timepoints;
	NSString* transitAgency;
	int myRunningDownloaders;
	IBOutlet NSProgressIndicator* myDownloadingProgressIndicator;
	IBOutlet NSTextField* myStatusLine;
	IBOutlet NSTextField* myServerTime;
	IBOutlet NSImageView* myConnectedIcon;
	IBOutlet NSImageView* myDisconnectedIcon;
}

@property(readonly) NSMutableArray* timepoints;

- (void) addTimepoint:(NSString*)timepointName regionCode:(int)regionCode description:(NSString*)description;

- (void)displayServerTime;
- (IBAction)downloadTimepoints:(id)sender;
- (IBAction)cancelDownloading:(id)sender;
- (void)informConnectionStatus:(int)region status:(int)code;
- (NSArray*)GetRawArrivalData:(NSString*)timepoint;

@end