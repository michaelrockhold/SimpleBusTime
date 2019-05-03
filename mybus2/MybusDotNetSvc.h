#import <Foundation/Foundation.h>
#import "USAdditions.h"
#import <libxml/tree.h>
#import "USGlobals.h"
@class MybusDotNetSvc_getEventEstimatesI;
@class MybusDotNetSvc_getEventEstimatesIResponse;
@class MybusDotNetSvc_ArrayOfEventEstimate;
@class MybusDotNetSvc_EventEstimate;
@class MybusDotNetSvc_getEventEstimatesIII;
@class MybusDotNetSvc_getEventEstimatesIIIResponse;
@class MybusDotNetSvc_currentTimeMillis;
@class MybusDotNetSvc_currentTimeMillisResponse;
@interface MybusDotNetSvc_getEventEstimatesI : NSObject {
	
/* elements */
/* attributes */
}
- (NSString *)nsPrefix;
- (NSString *)serializedFormUsingElementName:(NSString *)elName;
- (NSString *)serializedAttributeString;
- (NSString *)serializedElementString;
+ (MybusDotNetSvc_getEventEstimatesI *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
/* elements */
/* attributes */
- (NSDictionary *)attributes;
@end
@interface MybusDotNetSvc_getEventEstimatesIResponse : NSObject {
	
/* elements */
/* attributes */
}
- (NSString *)nsPrefix;
- (NSString *)serializedFormUsingElementName:(NSString *)elName;
- (NSString *)serializedAttributeString;
- (NSString *)serializedElementString;
+ (MybusDotNetSvc_getEventEstimatesIResponse *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
/* elements */
/* attributes */
- (NSDictionary *)attributes;
@end
@interface MybusDotNetSvc_EventEstimate : NSObject {
	
/* elements */
	NSNumber * goalDeviation;
	NSNumber * schedTime;
	NSNumber * timestamp;
	NSNumber * goalTime;
	NSString * type;
	NSNumber * distanceToGoal;
	NSString * destination;
	NSNumber * route;
/* attributes */
}
- (NSString *)nsPrefix;
- (NSString *)serializedFormUsingElementName:(NSString *)elName;
- (NSString *)serializedAttributeString;
- (NSString *)serializedElementString;
+ (MybusDotNetSvc_EventEstimate *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
/* elements */
@property (retain) NSNumber * goalDeviation;
@property (retain) NSNumber * schedTime;
@property (retain) NSNumber * timestamp;
@property (retain) NSNumber * goalTime;
@property (retain) NSString * type;
@property (retain) NSNumber * distanceToGoal;
@property (retain) NSString * destination;
@property (retain) NSNumber * route;
/* attributes */
- (NSDictionary *)attributes;
@end
@interface MybusDotNetSvc_ArrayOfEventEstimate : NSObject {
	
/* elements */
	NSMutableArray *EventEstimate;
/* attributes */
}
- (NSString *)nsPrefix;
- (NSString *)serializedFormUsingElementName:(NSString *)elName;
- (NSString *)serializedAttributeString;
- (NSString *)serializedElementString;
+ (MybusDotNetSvc_ArrayOfEventEstimate *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
/* elements */
- (void)addEventEstimate:(MybusDotNetSvc_EventEstimate *)toAdd;
@property (readonly) NSMutableArray * EventEstimate;
/* attributes */
- (NSDictionary *)attributes;
@end
@interface MybusDotNetSvc_getEventEstimatesIII : NSObject {
	
/* elements */
/* attributes */
}
- (NSString *)nsPrefix;
- (NSString *)serializedFormUsingElementName:(NSString *)elName;
- (NSString *)serializedAttributeString;
- (NSString *)serializedElementString;
+ (MybusDotNetSvc_getEventEstimatesIII *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
/* elements */
/* attributes */
- (NSDictionary *)attributes;
@end
@interface MybusDotNetSvc_getEventEstimatesIIIResponse : NSObject {
	
/* elements */
/* attributes */
}
- (NSString *)nsPrefix;
- (NSString *)serializedFormUsingElementName:(NSString *)elName;
- (NSString *)serializedAttributeString;
- (NSString *)serializedElementString;
+ (MybusDotNetSvc_getEventEstimatesIIIResponse *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
/* elements */
/* attributes */
- (NSDictionary *)attributes;
@end
@interface MybusDotNetSvc_currentTimeMillis : NSObject {
	
/* elements */
/* attributes */
}
- (NSString *)nsPrefix;
- (NSString *)serializedFormUsingElementName:(NSString *)elName;
- (NSString *)serializedAttributeString;
- (NSString *)serializedElementString;
+ (MybusDotNetSvc_currentTimeMillis *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
/* elements */
/* attributes */
- (NSDictionary *)attributes;
@end
@interface MybusDotNetSvc_currentTimeMillisResponse : NSObject {
	
/* elements */
/* attributes */
}
- (NSString *)nsPrefix;
- (NSString *)serializedFormUsingElementName:(NSString *)elName;
- (NSString *)serializedAttributeString;
- (NSString *)serializedElementString;
+ (MybusDotNetSvc_currentTimeMillisResponse *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
/* elements */
/* attributes */
- (NSDictionary *)attributes;
@end
/* Cookies handling provided by http://en.wikibooks.org/wiki/Programming:WebObjects/Web_Services/Web_Service_Provider */
#import <libxml/parser.h>
#import "xsd.h"
#import "MybusDotNetSvc.h"
@class MybusDotNetSoap;
@interface MybusDotNetSvc : NSObject {
	
}
+ (MybusDotNetSoap *)MybusDotNetSoap;
@end
@class MybusDotNetSoapResponse;
@interface MybusDotNetSoap : NSObject {
	NSURL *address;
	NSMutableArray *cookies;
	BOOL logXMLInOut;
}
@property (copy) NSURL *address;
@property (assign) BOOL logXMLInOut;
- (id)initWithAddress:(NSString *)anAddress;
- (NSString *)sendHTTPCallUsingBody:(NSString *)body soapAction:(NSString *)soapAction;
- (void)addCookie:(NSHTTPCookie *)toAdd;
- (MybusDotNetSoapResponse *)getEventEstimatesUsingParameters:(MybusDotNetSvc_getEventEstimatesIII *)aParameters ;
- (MybusDotNetSoapResponse *)currentTimeMillisUsingParameters:(MybusDotNetSvc_currentTimeMillis *)aParameters ;
@end
@interface MybusDotNetSoap_getEventEstimates : NSOperation {
	MybusDotNetSoap *binding;
	MybusDotNetSoapResponse *response;
	
	MybusDotNetSvc_getEventEstimatesIII * parameters;
}
@property (retain) MybusDotNetSoap *binding;
@property (readonly) MybusDotNetSoapResponse *response;
@property (retain) MybusDotNetSvc_getEventEstimatesIII * parameters;
- (id)initWithBinding:(MybusDotNetSoap *)aBinding
	parameters:(MybusDotNetSvc_getEventEstimatesIII *)aParameters
;
@end
@interface MybusDotNetSoap_currentTimeMillis : NSOperation {
	MybusDotNetSoap *binding;
	MybusDotNetSoapResponse *response;
	
	MybusDotNetSvc_currentTimeMillis * parameters;
}
@property (retain) MybusDotNetSoap *binding;
@property (readonly) MybusDotNetSoapResponse *response;
@property (retain) MybusDotNetSvc_currentTimeMillis * parameters;
- (id)initWithBinding:(MybusDotNetSoap *)aBinding
	parameters:(MybusDotNetSvc_currentTimeMillis *)aParameters
;
@end
@interface MybusDotNetSoap_envelope : NSObject {
}
+ (MybusDotNetSoap_envelope *)sharedInstance;
- (NSString *)serializedFormUsingHeaderElements:(NSDictionary *)headerElements bodyElements:(NSDictionary *)bodyElements;
@end
@interface MybusDotNetSoapResponse : NSObject {
	NSArray *headers;
	NSArray *bodyParts;
}
@property (retain) NSArray *headers;
@property (retain) NSArray *bodyParts;
@end
