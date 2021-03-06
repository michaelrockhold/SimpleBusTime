/*-
 * WSDL stubs for:  MybusService.wsdl
 *   Generated by:  michael
 *           Date:  Thu Apr 17 18:46:20 2008
 *        Emitter:  Objective-C
 */

#ifndef __MyBus__
#define __MyBus__

#import <CoreServices/CoreServices.h>
#import <Foundation/Foundation.h>
#import "WSGeneratedObj.h"

/*-
 *   Web Service:  MybusService
 * Documentation:  <not documented>
 */
/*-
 *   Method Name:  getEventData
 * Documentation:  <no documentation>
 */

@interface getEventData : WSGeneratedObj

// update the parameter list for the invocation.
- (void) setParameters:(NSString*) in_in0 in_in1:(SInt32) in_in1 in_in2:(SInt32) in_in2 in_in3:(SInt32) in_in3;

// result returns an id from the reply dictionary as specified by the WSDL.
- (id) resultValue;

@end; /* getEventData */


/*-
 *   Method Name:  getAgencies
 * Documentation:  <no documentation>
 */

@interface getAgencies : WSGeneratedObj

// No parameters for this method

// result returns an id from the reply dictionary as specified by the WSDL.
- (id) resultValue;

@end; /* getAgencies */


/*-
 *   Method Name:  getTime
 * Documentation:  <no documentation>
 */

@interface getTime : WSGeneratedObj

// No parameters for this method

// result returns an id from the reply dictionary as specified by the WSDL.
- (id) resultValue;

@end; /* getTime */


/*-
 * Web Service:  MybusService
 */
@interface MybusService : NSObject 

+ (id) getEventData:(NSString*) in_in0 in_in1:(SInt32) in_in1 in_in2:(SInt32) in_in2 in_in3:(SInt32) in_in3;
+ (id) getAgencies;
+ (id) getTime;

@end;


#endif /* __MyBus__ */
/*-
 * End of WSDL document at MybusService.wsdl
 */
