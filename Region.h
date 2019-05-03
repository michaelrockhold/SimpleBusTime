//
//  Region.h
//  SimpleBusTime
//
//  Created by Michael Rockhold on 4/9/08.
//  Copyright 2008 __MyCompanyName__. All rights reserved.
//

#ifndef __REGION_H__
#define __REGION_H__

#import <Cocoa/Cocoa.h>

enum Regions 
{
	SEATTLE = 0,
	NORTHSEATTLE,
	NORTHEASTSEATTLE,
	EASTSIDE,
	SOUTHSEATTLE,
	SOUTHEASTSIDE,
	SOUTHKINGCOUNTY,
	EASTKINGCOUNTY
};

struct RegionName 
{
	NSString* name;
	NSString* friendlyName;
};

#endif
