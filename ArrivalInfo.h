//
//  ArrivalInfo.h
//  SimpleBusTime
//
//  Created by Michael Rockhold on 4/2/08.
//  Copyright 2008 __MyCompanyName__. All rights reserved.
//

#import <Cocoa/Cocoa.h>
enum PredictorType
{
	PREDICTOR_UNKNOWN = 0,
	PREDICTOR_ARRIVED,
	PREDICTOR_DEPARTED,
	PREDICTOR_PREDICTION
};

@interface ArrivalInfo : NSObject
{
	NSString*		myRoute;
	NSString*		myDestination;
	NSDate*			mySchedTime;
	enum PredictorType	myPredictorType;
	NSDate*			myGoalTime;
	NSTimeInterval	myGoalDeviation;
	float			myDistanceToGoal;
	NSDate*			myTimestamp;
}

@property(readonly) NSString*	route;
@property(readonly) NSString*	destination;
@property(readonly) NSDate*		schedTime;
@property(readonly) NSString*	predictorType;
@property(readonly) NSDate*		goalTime;
@property(readonly) NSTimeInterval	goalDeviation;
@property(readonly) NSDate*		timestamp;
@property(readonly) float		distanceToGoal;

- (id) initWithSoapDictionary:(NSDictionary*)props;

@end
