//
//  ArrivalInfo.m
//  SimpleBusTime
//
//  Created by Michael Rockhold on 4/2/08.
//  Copyright 2008 __MyCompanyName__. All rights reserved.
//

#import "ArrivalInfo.h"

@implementation ArrivalInfo

@dynamic	route;
@dynamic	destination;
@dynamic	schedTime;
@dynamic	predictorType;
@dynamic	goalTime;
@dynamic	goalDeviation;
@dynamic	timestamp;
@dynamic	distanceToGoal;


+ (NSDate*)midnight
{
	static NSDate* s_midnight = nil;

	if ( nil == s_midnight )
		{
		//YYYY-MM-DD HH:MM:SS ±HHMM
		// replace the time portion of the 'now' date string with 00:00:00, and turn
		// the string back into a date object to get the time for midnight
		NSString* midnightStr = [[[NSDate date] description] stringByReplacingCharactersInRange:NSMakeRange(11,8) withString:@"00:00:00"];
		s_midnight = [[NSDate dateWithString:midnightStr] retain];
		}
	return s_midnight;	
}


- (id) initWithSoapDictionary:(NSDictionary*)props
{
/*
	from http://www.its.washington.edu/mybus_ws_notes.html
	
	schedTime		Scheduled time of event (departure of bus from given location) in seconds past midnight
	goalTime		Predicted time of event, in seconds past midnight
					If goalTime is undefined for some reason, this will be -1
	goalDeviation	goalTime - schedTime (early departure would be negative)
					For an undefined goalTime, goalDeviation will have the value 43200
	timestamp		Timestamp of last data from a bus, in milliseconds since the epoch
	distanceToGoal	Distance to 'goal' (location of event) in feet; (negative if already past goal)
	type			'Predictor type'; can be a=arrived, d=departed, p=prediction
	destination		A string identifying the eventual destination of the bus
	route			Route number of the bus
*/
	if (self = [super init])
		{
		myRoute = [[(NSNumber*)[props objectForKey:@"route"] stringValue] retain];
		myDestination = [(NSString*)[props objectForKey:@"destination"] retain];
		myDistanceToGoal = [(NSNumber*)[props objectForKey:@"distanceToGoal"] floatValue] / 0.3048;
		myGoalDeviation = [(NSNumber*)[props objectForKey:@"goalDeviation"] floatValue];
		
		NSString* predictorString = (NSString*)[props objectForKey:@"type"];
		if ( [predictorString caseInsensitiveCompare:@"a"] == 0 )
			myPredictorType = PREDICTOR_ARRIVED;
		else if ( [predictorString caseInsensitiveCompare:@"d"] == 0 )
			myPredictorType = PREDICTOR_DEPARTED;
		else if ( [predictorString caseInsensitiveCompare:@"p"] == 0 )
			myPredictorType = PREDICTOR_PREDICTION;
		else
			myPredictorType = PREDICTOR_UNKNOWN;
		
		long timeStamp = [(NSNumber*)[props objectForKey:@"timestamp"] longValue];
		myTimestamp = [NSDate dateWithTimeIntervalSince1970:timeStamp/1000];
		
		NSDate* midnight = [ArrivalInfo midnight];

		NSTimeInterval schedTime = [(NSNumber*)[props objectForKey:@"schedTime"] floatValue];
		mySchedTime = [[NSDate alloc] initWithTimeInterval:schedTime sinceDate:midnight];
		
		NSTimeInterval goalTime = [(NSNumber*)[props objectForKey:@"goalTime"] floatValue];
		myGoalTime = [[NSDate alloc] initWithTimeInterval:goalTime sinceDate:midnight];
		}
	return self;	
}

- (void) dealloc
{
    [myRoute release];
    [myDestination release];
    [myTimestamp release];
    [mySchedTime release];
    [myGoalTime release];
    
    [super dealloc];
}


- (NSString*)route
{
	return myRoute;
}

- (NSString*)destination
{
	return myDestination;
}

- (NSDate*)schedTime
{
	return mySchedTime;
}

- (NSString*)predictorType
{
	switch (myPredictorType)
	{
		case PREDICTOR_ARRIVED:
			return @"Arrived";
		case PREDICTOR_DEPARTED:
			return @"Departed";
		case PREDICTOR_PREDICTION:
			return @"Prediction";
		default:
			return @"Unknown";
	}
}

- (NSDate*)goalTime
{
	return myGoalTime;
}

- (NSTimeInterval)goalDeviation
{
	return myGoalDeviation;
}

- (NSDate*)timestamp
{
	return myTimestamp;
}

- (float)distanceToGoal
{
	return myDistanceToGoal;
}


@end
