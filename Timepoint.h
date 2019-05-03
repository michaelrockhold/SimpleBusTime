//
//  Timepoint.h
//  SimpleBusTime
//
//  Created by Michael Rockhold on 4/2/08.
//  Copyright 2008 __MyCompanyName__. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@class BusTimeController;

@interface Timepoint : NSObject
{
	BusTimeController*		myController;
	NSString*				myName;
	int						myRegionCode;
	NSString*				myAddress;
	NSMutableArray*			myArrivals;
	NSDate*					myLastUpdateStamp;
}

@property(readonly) NSString* name;
@property(readonly) NSString* region;
@property(readonly) NSString* address;
@property(readonly) NSArray* arrivals;

- (id) initWithContext:(BusTimeController*)controller name:(NSString*)name regionCode:(int)regionCode address:(NSString*)address;

- (void) downloadArrivals:(id)ignore;

@end
