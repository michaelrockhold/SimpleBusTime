#import "MybusDotNetSvc.h"
#import <libxml/xmlstring.h>
@implementation MybusDotNetSvc_getEventEstimatesI
- (id)init
{
	if((self = [super init])) {
	}
	
	return self;
}
- (void)dealloc
{
	
	[super dealloc];
}
- (NSString *)nsPrefix
{
	return @"MybusDotNetSvc";
}
- (NSString *)serializedFormUsingElementName:(NSString *)elName
{
	NSMutableString *serializedForm = [NSMutableString string];
	
	[serializedForm appendFormat:@"<%@ xsi:type=\"MybusDotNetSvc:getEventEstimatesI\"", elName];
	[serializedForm appendString:[self serializedAttributeString]];
	[serializedForm appendFormat:@">"];
	
	[serializedForm appendString:[self serializedElementString]];
	
	[serializedForm appendFormat:@"\n</%@>", elName];
	
	return serializedForm;
}
- (NSString *)serializedAttributeString
{
	NSMutableString *serializedForm = [NSMutableString string];
	
	
	
	return serializedForm;
}
- (NSString *)serializedElementString
{
	NSMutableString *serializedForm = [NSMutableString string];
	
	
	
	return serializedForm;
}
/* elements */
/* attributes */
- (NSDictionary *)attributes
{
	NSMutableDictionary *attributes = [NSMutableDictionary dictionary];
	
	return attributes;
}
+ (MybusDotNetSvc_getEventEstimatesI *)deserializeNode:(xmlNodePtr)cur
{
	MybusDotNetSvc_getEventEstimatesI *newObject = [[MybusDotNetSvc_getEventEstimatesI new] autorelease];
	
	[newObject deserializeAttributesFromNode:cur];
	[newObject deserializeElementsFromNode:cur];
	
	return newObject;
}
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur
{
}
- (void)deserializeElementsFromNode:(xmlNodePtr)cur
{
	
	
}
@end
@implementation MybusDotNetSvc_getEventEstimatesIResponse
- (id)init
{
	if((self = [super init])) {
	}
	
	return self;
}
- (void)dealloc
{
	
	[super dealloc];
}
- (NSString *)nsPrefix
{
	return @"MybusDotNetSvc";
}
- (NSString *)serializedFormUsingElementName:(NSString *)elName
{
	NSMutableString *serializedForm = [NSMutableString string];
	
	[serializedForm appendFormat:@"<%@ xsi:type=\"MybusDotNetSvc:getEventEstimatesIResponse\"", elName];
	[serializedForm appendString:[self serializedAttributeString]];
	[serializedForm appendFormat:@">"];
	
	[serializedForm appendString:[self serializedElementString]];
	
	[serializedForm appendFormat:@"\n</%@>", elName];
	
	return serializedForm;
}
- (NSString *)serializedAttributeString
{
	NSMutableString *serializedForm = [NSMutableString string];
	
	
	
	return serializedForm;
}
- (NSString *)serializedElementString
{
	NSMutableString *serializedForm = [NSMutableString string];
	
	
	
	return serializedForm;
}
/* elements */
/* attributes */
- (NSDictionary *)attributes
{
	NSMutableDictionary *attributes = [NSMutableDictionary dictionary];
	
	return attributes;
}
+ (MybusDotNetSvc_getEventEstimatesIResponse *)deserializeNode:(xmlNodePtr)cur
{
	MybusDotNetSvc_getEventEstimatesIResponse *newObject = [[MybusDotNetSvc_getEventEstimatesIResponse new] autorelease];
	
	[newObject deserializeAttributesFromNode:cur];
	[newObject deserializeElementsFromNode:cur];
	
	return newObject;
}
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur
{
}
- (void)deserializeElementsFromNode:(xmlNodePtr)cur
{
	
	
}
@end
@implementation MybusDotNetSvc_EventEstimate
- (id)init
{
	if((self = [super init])) {
		goalDeviation = 0;
		schedTime = 0;
		timestamp = 0;
		goalTime = 0;
		type = 0;
		distanceToGoal = 0;
		destination = 0;
		route = 0;
	}
	
	return self;
}
- (void)dealloc
{
	if(goalDeviation != nil) [goalDeviation release];
	if(schedTime != nil) [schedTime release];
	if(timestamp != nil) [timestamp release];
	if(goalTime != nil) [goalTime release];
	if(type != nil) [type release];
	if(distanceToGoal != nil) [distanceToGoal release];
	if(destination != nil) [destination release];
	if(route != nil) [route release];
	
	[super dealloc];
}
- (NSString *)nsPrefix
{
	return @"MybusDotNetSvc";
}
- (NSString *)serializedFormUsingElementName:(NSString *)elName
{
	NSMutableString *serializedForm = [NSMutableString string];
	
	[serializedForm appendFormat:@"<%@ xsi:type=\"MybusDotNetSvc:EventEstimate\"", elName];
	[serializedForm appendString:[self serializedAttributeString]];
	[serializedForm appendFormat:@">"];
	
	[serializedForm appendString:[self serializedElementString]];
	
	[serializedForm appendFormat:@"\n</%@>", elName];
	
	return serializedForm;
}
- (NSString *)serializedAttributeString
{
	NSMutableString *serializedForm = [NSMutableString string];
	
	
	
	return serializedForm;
}
- (NSString *)serializedElementString
{
	NSMutableString *serializedForm = [NSMutableString string];
	
	
	if(self.goalDeviation != 0) {
		[serializedForm appendFormat:@"\n%@", [self.goalDeviation serializedFormUsingElementName:@"goalDeviation"]];
	}
	if(self.schedTime != 0) {
		[serializedForm appendFormat:@"\n%@", [self.schedTime serializedFormUsingElementName:@"schedTime"]];
	}
	if(self.timestamp != 0) {
		[serializedForm appendFormat:@"\n%@", [self.timestamp serializedFormUsingElementName:@"timestamp"]];
	}
	if(self.goalTime != 0) {
		[serializedForm appendFormat:@"\n%@", [self.goalTime serializedFormUsingElementName:@"goalTime"]];
	}
	if(self.type != 0) {
		[serializedForm appendFormat:@"\n%@", [self.type serializedFormUsingElementName:@"type"]];
	}
	if(self.distanceToGoal != 0) {
		[serializedForm appendFormat:@"\n%@", [self.distanceToGoal serializedFormUsingElementName:@"distanceToGoal"]];
	}
	if(self.destination != 0) {
		[serializedForm appendFormat:@"\n%@", [self.destination serializedFormUsingElementName:@"destination"]];
	}
	if(self.route != 0) {
		[serializedForm appendFormat:@"\n%@", [self.route serializedFormUsingElementName:@"route"]];
	}
	
	return serializedForm;
}
/* elements */
@synthesize goalDeviation;
@synthesize schedTime;
@synthesize timestamp;
@synthesize goalTime;
@synthesize type;
@synthesize distanceToGoal;
@synthesize destination;
@synthesize route;
/* attributes */
- (NSDictionary *)attributes
{
	NSMutableDictionary *attributes = [NSMutableDictionary dictionary];
	
	return attributes;
}
+ (MybusDotNetSvc_EventEstimate *)deserializeNode:(xmlNodePtr)cur
{
	MybusDotNetSvc_EventEstimate *newObject = [[MybusDotNetSvc_EventEstimate new] autorelease];
	
	[newObject deserializeAttributesFromNode:cur];
	[newObject deserializeElementsFromNode:cur];
	
	return newObject;
}
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur
{
}
- (void)deserializeElementsFromNode:(xmlNodePtr)cur
{
	
	
	for( cur = cur->children ; cur != NULL ; cur = cur->next ) {
		if(cur->type == XML_ELEMENT_NODE) {
			xmlChar *elementText = xmlNodeListGetString(cur->doc, cur->children, 1);
			NSString *elementString = nil;
			
			if(elementText != NULL) {
				elementString = [NSString stringWithCString:(char*)elementText encoding:NSUTF8StringEncoding];
				xmlFree(elementText);
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "goalDeviation")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NSNumber  class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, (const xmlChar *)[prefix UTF8String]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.goalDeviation = newChild;
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "schedTime")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NSNumber  class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, (const xmlChar *)[prefix UTF8String]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.schedTime = newChild;
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "timestamp")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NSNumber  class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, (const xmlChar *)[prefix UTF8String]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.timestamp = newChild;
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "goalTime")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NSNumber  class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, (const xmlChar *)[prefix UTF8String]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.goalTime = newChild;
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "type")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NSString  class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, (const xmlChar *)[prefix UTF8String]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.type = newChild;
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "distanceToGoal")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NSNumber  class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, (const xmlChar *)[prefix UTF8String]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.distanceToGoal = newChild;
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "destination")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NSString  class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, (const xmlChar *)[prefix UTF8String]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.destination = newChild;
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "route")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NSNumber  class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, (const xmlChar *)[prefix UTF8String]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.route = newChild;
			}
		}
	}
}
@end
@implementation MybusDotNetSvc_ArrayOfEventEstimate
- (id)init
{
	if((self = [super init])) {
		EventEstimate = [[NSMutableArray alloc] init];
	}
	
	return self;
}
- (void)dealloc
{
	if(EventEstimate != nil) [EventEstimate release];
	
	[super dealloc];
}
- (NSString *)nsPrefix
{
	return @"MybusDotNetSvc";
}
- (NSString *)serializedFormUsingElementName:(NSString *)elName
{
	NSMutableString *serializedForm = [NSMutableString string];
	
	[serializedForm appendFormat:@"<%@ xsi:type=\"MybusDotNetSvc:ArrayOfEventEstimate\"", elName];
	[serializedForm appendString:[self serializedAttributeString]];
	[serializedForm appendFormat:@">"];
	
	[serializedForm appendString:[self serializedElementString]];
	
	[serializedForm appendFormat:@"\n</%@>", elName];
	
	return serializedForm;
}
- (NSString *)serializedAttributeString
{
	NSMutableString *serializedForm = [NSMutableString string];
	
	
	
	return serializedForm;
}
- (NSString *)serializedElementString
{
	NSMutableString *serializedForm = [NSMutableString string];
	
	
	if(self.EventEstimate != 0) {
		for(MybusDotNetSvc_EventEstimate * child in self.EventEstimate) {
			[serializedForm appendFormat:@"\n%@", [child serializedFormUsingElementName:@"EventEstimate"]];
		}
	}
	
	return serializedForm;
}
/* elements */
@synthesize EventEstimate;
- (void)addEventEstimate:(MybusDotNetSvc_EventEstimate *)toAdd
{
	if(toAdd != nil) [EventEstimate addObject:toAdd];
}
/* attributes */
- (NSDictionary *)attributes
{
	NSMutableDictionary *attributes = [NSMutableDictionary dictionary];
	
	return attributes;
}
+ (MybusDotNetSvc_ArrayOfEventEstimate *)deserializeNode:(xmlNodePtr)cur
{
	MybusDotNetSvc_ArrayOfEventEstimate *newObject = [[MybusDotNetSvc_ArrayOfEventEstimate new] autorelease];
	
	[newObject deserializeAttributesFromNode:cur];
	[newObject deserializeElementsFromNode:cur];
	
	return newObject;
}
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur
{
}
- (void)deserializeElementsFromNode:(xmlNodePtr)cur
{
	
	
	for( cur = cur->children ; cur != NULL ; cur = cur->next ) {
		if(cur->type == XML_ELEMENT_NODE) {
			xmlChar *elementText = xmlNodeListGetString(cur->doc, cur->children, 1);
			NSString *elementString = nil;
			
			if(elementText != NULL) {
				elementString = [NSString stringWithCString:(char*)elementText encoding:NSUTF8StringEncoding];
				xmlFree(elementText);
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "EventEstimate")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [MybusDotNetSvc_EventEstimate class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, (const xmlChar *)[prefix UTF8String]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				if(newChild != nil) [self.EventEstimate addObject:newChild];
			}
		}
	}
}
@end
@implementation MybusDotNetSvc_getEventEstimatesIII
- (id)init
{
	if((self = [super init])) {
	}
	
	return self;
}
- (void)dealloc
{
	
	[super dealloc];
}
- (NSString *)nsPrefix
{
	return @"MybusDotNetSvc";
}
- (NSString *)serializedFormUsingElementName:(NSString *)elName
{
	NSMutableString *serializedForm = [NSMutableString string];
	
	[serializedForm appendFormat:@"<%@ xsi:type=\"MybusDotNetSvc:getEventEstimatesIII\"", elName];
	[serializedForm appendString:[self serializedAttributeString]];
	[serializedForm appendFormat:@">"];
	
	[serializedForm appendString:[self serializedElementString]];
	
	[serializedForm appendFormat:@"\n</%@>", elName];
	
	return serializedForm;
}
- (NSString *)serializedAttributeString
{
	NSMutableString *serializedForm = [NSMutableString string];
	
	
	
	return serializedForm;
}
- (NSString *)serializedElementString
{
	NSMutableString *serializedForm = [NSMutableString string];
	
	
	
	return serializedForm;
}
/* elements */
/* attributes */
- (NSDictionary *)attributes
{
	NSMutableDictionary *attributes = [NSMutableDictionary dictionary];
	
	return attributes;
}
+ (MybusDotNetSvc_getEventEstimatesIII *)deserializeNode:(xmlNodePtr)cur
{
	MybusDotNetSvc_getEventEstimatesIII *newObject = [[MybusDotNetSvc_getEventEstimatesIII new] autorelease];
	
	[newObject deserializeAttributesFromNode:cur];
	[newObject deserializeElementsFromNode:cur];
	
	return newObject;
}
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur
{
}
- (void)deserializeElementsFromNode:(xmlNodePtr)cur
{
	
	
}
@end
@implementation MybusDotNetSvc_getEventEstimatesIIIResponse
- (id)init
{
	if((self = [super init])) {
	}
	
	return self;
}
- (void)dealloc
{
	
	[super dealloc];
}
- (NSString *)nsPrefix
{
	return @"MybusDotNetSvc";
}
- (NSString *)serializedFormUsingElementName:(NSString *)elName
{
	NSMutableString *serializedForm = [NSMutableString string];
	
	[serializedForm appendFormat:@"<%@ xsi:type=\"MybusDotNetSvc:getEventEstimatesIIIResponse\"", elName];
	[serializedForm appendString:[self serializedAttributeString]];
	[serializedForm appendFormat:@">"];
	
	[serializedForm appendString:[self serializedElementString]];
	
	[serializedForm appendFormat:@"\n</%@>", elName];
	
	return serializedForm;
}
- (NSString *)serializedAttributeString
{
	NSMutableString *serializedForm = [NSMutableString string];
	
	
	
	return serializedForm;
}
- (NSString *)serializedElementString
{
	NSMutableString *serializedForm = [NSMutableString string];
	
	
	
	return serializedForm;
}
/* elements */
/* attributes */
- (NSDictionary *)attributes
{
	NSMutableDictionary *attributes = [NSMutableDictionary dictionary];
	
	return attributes;
}
+ (MybusDotNetSvc_getEventEstimatesIIIResponse *)deserializeNode:(xmlNodePtr)cur
{
	MybusDotNetSvc_getEventEstimatesIIIResponse *newObject = [[MybusDotNetSvc_getEventEstimatesIIIResponse new] autorelease];
	
	[newObject deserializeAttributesFromNode:cur];
	[newObject deserializeElementsFromNode:cur];
	
	return newObject;
}
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur
{
}
- (void)deserializeElementsFromNode:(xmlNodePtr)cur
{
	
	
}
@end
@implementation MybusDotNetSvc_currentTimeMillis
- (id)init
{
	if((self = [super init])) {
	}
	
	return self;
}
- (void)dealloc
{
	
	[super dealloc];
}
- (NSString *)nsPrefix
{
	return @"MybusDotNetSvc";
}
- (NSString *)serializedFormUsingElementName:(NSString *)elName
{
	NSMutableString *serializedForm = [NSMutableString string];
	
	[serializedForm appendFormat:@"<%@ xsi:type=\"MybusDotNetSvc:currentTimeMillis\"", elName];
	[serializedForm appendString:[self serializedAttributeString]];
	[serializedForm appendFormat:@">"];
	
	[serializedForm appendString:[self serializedElementString]];
	
	[serializedForm appendFormat:@"\n</%@>", elName];
	
	return serializedForm;
}
- (NSString *)serializedAttributeString
{
	NSMutableString *serializedForm = [NSMutableString string];
	
	
	
	return serializedForm;
}
- (NSString *)serializedElementString
{
	NSMutableString *serializedForm = [NSMutableString string];
	
	
	
	return serializedForm;
}
/* elements */
/* attributes */
- (NSDictionary *)attributes
{
	NSMutableDictionary *attributes = [NSMutableDictionary dictionary];
	
	return attributes;
}
+ (MybusDotNetSvc_currentTimeMillis *)deserializeNode:(xmlNodePtr)cur
{
	MybusDotNetSvc_currentTimeMillis *newObject = [[MybusDotNetSvc_currentTimeMillis new] autorelease];
	
	[newObject deserializeAttributesFromNode:cur];
	[newObject deserializeElementsFromNode:cur];
	
	return newObject;
}
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur
{
}
- (void)deserializeElementsFromNode:(xmlNodePtr)cur
{
	
	
}
@end
@implementation MybusDotNetSvc_currentTimeMillisResponse
- (id)init
{
	if((self = [super init])) {
	}
	
	return self;
}
- (void)dealloc
{
	
	[super dealloc];
}
- (NSString *)nsPrefix
{
	return @"MybusDotNetSvc";
}
- (NSString *)serializedFormUsingElementName:(NSString *)elName
{
	NSMutableString *serializedForm = [NSMutableString string];
	
	[serializedForm appendFormat:@"<%@ xsi:type=\"MybusDotNetSvc:currentTimeMillisResponse\"", elName];
	[serializedForm appendString:[self serializedAttributeString]];
	[serializedForm appendFormat:@">"];
	
	[serializedForm appendString:[self serializedElementString]];
	
	[serializedForm appendFormat:@"\n</%@>", elName];
	
	return serializedForm;
}
- (NSString *)serializedAttributeString
{
	NSMutableString *serializedForm = [NSMutableString string];
	
	
	
	return serializedForm;
}
- (NSString *)serializedElementString
{
	NSMutableString *serializedForm = [NSMutableString string];
	
	
	
	return serializedForm;
}
/* elements */
/* attributes */
- (NSDictionary *)attributes
{
	NSMutableDictionary *attributes = [NSMutableDictionary dictionary];
	
	return attributes;
}
+ (MybusDotNetSvc_currentTimeMillisResponse *)deserializeNode:(xmlNodePtr)cur
{
	MybusDotNetSvc_currentTimeMillisResponse *newObject = [[MybusDotNetSvc_currentTimeMillisResponse new] autorelease];
	
	[newObject deserializeAttributesFromNode:cur];
	[newObject deserializeElementsFromNode:cur];
	
	return newObject;
}
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur
{
}
- (void)deserializeElementsFromNode:(xmlNodePtr)cur
{
	
	
}
@end
@implementation MybusDotNetSvc
+ (void)initialize
{
	[[USGlobals sharedInstance].wsdlStandardNamespaces setObject:@"xsd" forKey:@"http://www.w3.org/2001/XMLSchema"];
	[[USGlobals sharedInstance].wsdlStandardNamespaces setObject:@"MybusDotNetSvc" forKey:@"http://dotnet.ws.its.washington.edu"];
}
+ (MybusDotNetSoap *)MybusDotNetSoap
{
	return [[[MybusDotNetSoap alloc] initWithAddress:@"http://ws.its.washington.edu/Mybus/Mybus.asmx"] autorelease];
}
@end
@implementation MybusDotNetSoap
@synthesize address;
@synthesize logXMLInOut;
- (id)init
{
	if((self = [super init])) {
		address = nil;
		cookies = nil;
		logXMLInOut = NO;
	}
	
	return self;
}
- (id)initWithAddress:(NSString *)anAddress
{
	if((self = [self init])) {
		self.address = [NSURL URLWithString:anAddress];
	}
	
	return self;
}
- (void)addCookie:(NSHTTPCookie *)toAdd
{
	if(toAdd != nil) {
		if(cookies == nil) cookies = [[NSMutableArray alloc] init];
		[cookies addObject:toAdd];
	}
}
- (MybusDotNetSoapResponse *)getEventEstimatesUsingParameters:(MybusDotNetSvc_getEventEstimatesIII *)aParameters 
{
	MybusDotNetSoap_getEventEstimates *operation = [(MybusDotNetSoap_getEventEstimates*)[MybusDotNetSoap_getEventEstimates alloc] initWithBinding:self
		parameters:aParameters
	];
	
	NSOperationQueue *queue = [[NSOperationQueue new] autorelease];
	
	[queue addOperation:operation];
	
	[queue waitUntilAllOperationsAreFinished];
	
	return operation.response;
}
- (MybusDotNetSoapResponse *)currentTimeMillisUsingParameters:(MybusDotNetSvc_currentTimeMillis *)aParameters 
{
	MybusDotNetSoap_currentTimeMillis *operation = [(MybusDotNetSoap_currentTimeMillis*)[MybusDotNetSoap_currentTimeMillis alloc] initWithBinding:self
		parameters:aParameters
	];
	
	NSOperationQueue *queue = [[NSOperationQueue new] autorelease];
	
	[queue addOperation:operation];
	
	[queue waitUntilAllOperationsAreFinished];
	
	return operation.response;
}
- (NSString *)sendHTTPCallUsingBody:(NSString *)outputBody soapAction:(NSString *)soapAction
{
	NSMutableDictionary *HTTPHeaders = [NSMutableDictionary dictionary];
	if(cookies != nil) {
		NSDictionary *fCookies = [NSHTTPCookie requestHeaderFieldsWithCookies:cookies];
		[HTTPHeaders addEntriesFromDictionary:fCookies];
	}
	[HTTPHeaders setObject:@"wsdl2objc" forKey:@"UserAgent"];
	[HTTPHeaders setObject:soapAction forKey:@"SOAPAction"];
	
	CFHTTPMessageRef request = CFHTTPMessageCreateRequest(kCFAllocatorDefault, (CFStringRef)@"POST", (CFURLRef)self.address, kCFHTTPVersion1_1);
	
	CFDataRef bodyData = (CFDataRef)[outputBody dataUsingEncoding:NSUTF8StringEncoding];
	CFHTTPMessageSetBody(request, bodyData);
	
	for(NSString *key in [HTTPHeaders allKeys]) {
		CFHTTPMessageSetHeaderFieldValue(request, (CFStringRef)key, (CFStringRef)[HTTPHeaders objectForKey:key]);
	}
	
	NSDictionary *outputHeaders = (NSDictionary*)CFHTTPMessageCopyAllHeaderFields(request);
	
	if(self.logXMLInOut) {
		NSLog(@"OutputHeaders:\n%@", outputHeaders);
		NSLog(@"OutputBody:\n%@", outputBody);
	}
	
	CFReadStreamRef readStream = CFReadStreamCreateForHTTPRequest(kCFAllocatorDefault, request);
	
	if(!CFReadStreamOpen(readStream)) {
		CFStreamError myErr = CFReadStreamGetError(readStream);
		// An error has occurred.
        if (myErr.domain == kCFStreamErrorDomainPOSIX) {
        // Interpret myErr.error as a UNIX errno.
        } else if (myErr.domain == kCFStreamErrorDomainMacOSStatus) {
        // Interpret myErr.error as a MacOS error code.
            //OSStatus macError = (OSStatus)myErr.error;
        // Check other error domains.
		}
	}
	
	CFReadStreamSetProperty(readStream, kCFStreamPropertyHTTPShouldAutoredirect, kCFBooleanTrue);
	
	//CFHTTPMessageRef response = (CFHTTPMessageRef)CFReadStreamCopyProperty(readStream, kCFStreamPropertyHTTPResponseHeader);
	//NSString *statusLine = (NSString*)CFHTTPMessageCopyResponseStatusLine(response);
	
	NSMutableString *responseBody = [NSMutableString string];
	
	static unsigned int kReadBufSize = 1024;
	CFIndex numBytesRead;
	do {
		UInt8 buf[kReadBufSize];
		numBytesRead = CFReadStreamRead(readStream, buf, sizeof(buf));
		if( numBytesRead > 0 ) {
			[responseBody appendString:[[[NSString alloc] initWithBytes:buf length:numBytesRead encoding:NSUTF8StringEncoding] autorelease]];
		} else if( numBytesRead < 0 ) {
			//CFStreamError error = CFReadStreamGetError(readStream);
			//[[NSApplication sharedApplication] presentError:(NSError*)error];
		}
	} while( numBytesRead > 0 );
	
	CFHTTPMessageRef response = (CFHTTPMessageRef)CFReadStreamCopyProperty(readStream, kCFStreamPropertyHTTPResponseHeader);
	NSDictionary *responseHeaders = (NSDictionary*)CFHTTPMessageCopyAllHeaderFields(response);
	[responseHeaders autorelease];
	
	if(cookies) [cookies release];
	cookies = [[NSHTTPCookie cookiesWithResponseHeaderFields:responseHeaders forURL:self.address] mutableCopy];
	
	if(self.logXMLInOut) {
		NSLog(@"ResponseHeaders:\n%@", responseHeaders);
		NSLog(@"ResponseBody:\n%@", responseBody);
	}
	
	return responseBody;
}
@end
@implementation MybusDotNetSoap_getEventEstimates
@synthesize binding;
@synthesize response;
@synthesize parameters;
- (id)initWithBinding:(MybusDotNetSoap *)aBinding
  parameters:(MybusDotNetSvc_getEventEstimatesIII *)aParameters
{
	if((self = [super init])) {
		response = nil;
		
		self.binding = aBinding;
		
		self.parameters = aParameters;
	}
	
	return self;
}
- (void)dealloc
{
	if(binding != nil) [binding release];
	if(parameters != nil) [parameters release];
	
	[super dealloc];
}
- (void)main
{
	[response autorelease];
	response = [MybusDotNetSoapResponse new];
	
	MybusDotNetSoap_envelope *envelope = [MybusDotNetSoap_envelope sharedInstance];
	
	NSMutableDictionary *headerElements = nil;
	headerElements = [NSMutableDictionary dictionary];
	
	NSMutableDictionary *bodyElements = nil;
	bodyElements = [NSMutableDictionary dictionary];
		if(parameters != nil) [bodyElements setObject:parameters forKey:@"getEventEstimatesIII"];
	
	NSString *operationXMLString = [envelope serializedFormUsingHeaderElements:headerElements bodyElements:bodyElements];
	
	NSString *responseBody = [binding sendHTTPCallUsingBody:operationXMLString soapAction:@"http://dotnet.ws.its.washington.edu/getEventEstimatesIII"];
	
	xmlDocPtr doc;
	xmlNodePtr cur;
	
	const char *buffer = [responseBody cStringUsingEncoding:NSUTF8StringEncoding];
	
	doc = xmlParseMemory(buffer, [responseBody length]);
	
	NSAssert(doc != NULL, @"Errors while parsing returned XML");
	
	cur = xmlDocGetRootElement(doc);
	cur = cur->children;
	
	for( ; cur != NULL ; cur = cur->next) {
		if(cur->type == XML_ELEMENT_NODE) {
			
			if(xmlStrEqual(cur->name, (const xmlChar *) "Body")) {
				NSMutableArray *responseBodyParts = [NSMutableArray array];
				
				xmlNodePtr bodyNode;
				for(bodyNode=cur->children ; bodyNode != NULL ; bodyNode = bodyNode->next) {
					if(cur->type == XML_ELEMENT_NODE) {
						if(xmlStrEqual(bodyNode->name, (const xmlChar *) "getEventEstimatesIIIResponse")) {
							MybusDotNetSvc_getEventEstimatesIIIResponse *bodyObject = [MybusDotNetSvc_getEventEstimatesIIIResponse deserializeNode:bodyNode];
							NSAssert1(bodyObject != nil, @"Errors while parsing body %s", bodyNode->name);
							[responseBodyParts addObject:bodyObject];
						}
					}
				}
				
				response.bodyParts = responseBodyParts;
			}
		}
	}
	
	xmlFreeDoc(doc);
	
	xmlCleanupParser();
}
@end
@implementation MybusDotNetSoap_currentTimeMillis
@synthesize binding;
@synthesize response;
@synthesize parameters;
- (id)initWithBinding:(MybusDotNetSoap *)aBinding
  parameters:(MybusDotNetSvc_currentTimeMillis *)aParameters
{
	if((self = [super init])) {
		response = nil;
		
		self.binding = aBinding;
		
		self.parameters = aParameters;
	}
	
	return self;
}
- (void)dealloc
{
	if(binding != nil) [binding release];
	if(parameters != nil) [parameters release];
	
	[super dealloc];
}
- (void)main
{
	[response autorelease];
	response = [MybusDotNetSoapResponse new];
	
	MybusDotNetSoap_envelope *envelope = [MybusDotNetSoap_envelope sharedInstance];
	
	NSMutableDictionary *headerElements = nil;
	headerElements = [NSMutableDictionary dictionary];
	
	NSMutableDictionary *bodyElements = nil;
	bodyElements = [NSMutableDictionary dictionary];
		if(parameters != nil) [bodyElements setObject:parameters forKey:@"currentTimeMillis"];
	
	NSString *operationXMLString = [envelope serializedFormUsingHeaderElements:headerElements bodyElements:bodyElements];
	
	NSString *responseBody = [binding sendHTTPCallUsingBody:operationXMLString soapAction:@"http://dotnet.ws.its.washington.edu/currentTimeMillis"];
	
	xmlDocPtr doc;
	xmlNodePtr cur;
	
	const char *buffer = [responseBody cStringUsingEncoding:NSUTF8StringEncoding];
	
	doc = xmlParseMemory(buffer, [responseBody length]);
	
	NSAssert(doc != NULL, @"Errors while parsing returned XML");
	
	cur = xmlDocGetRootElement(doc);
	cur = cur->children;
	
	for( ; cur != NULL ; cur = cur->next) {
		if(cur->type == XML_ELEMENT_NODE) {
			
			if(xmlStrEqual(cur->name, (const xmlChar *) "Body")) {
				NSMutableArray *responseBodyParts = [NSMutableArray array];
				
				xmlNodePtr bodyNode;
				for(bodyNode=cur->children ; bodyNode != NULL ; bodyNode = bodyNode->next) {
					if(cur->type == XML_ELEMENT_NODE) {
						if(xmlStrEqual(bodyNode->name, (const xmlChar *) "currentTimeMillisResponse")) {
							MybusDotNetSvc_currentTimeMillisResponse *bodyObject = [MybusDotNetSvc_currentTimeMillisResponse deserializeNode:bodyNode];
							NSAssert1(bodyObject != nil, @"Errors while parsing body %s", bodyNode->name);
							[responseBodyParts addObject:bodyObject];
						}
					}
				}
				
				response.bodyParts = responseBodyParts;
			}
		}
	}
	
	xmlFreeDoc(doc);
	
	xmlCleanupParser();
}
@end
static MybusDotNetSoap_envelope *MybusDotNetSoapSharedEnvelopeInstance = nil;
@implementation MybusDotNetSoap_envelope
+ (MybusDotNetSoap_envelope *)sharedInstance
{
	if(MybusDotNetSoapSharedEnvelopeInstance == nil) {
		MybusDotNetSoapSharedEnvelopeInstance = [MybusDotNetSoap_envelope new];
	}
	
	return MybusDotNetSoapSharedEnvelopeInstance;
}
- (NSString *)serializedFormUsingHeaderElements:(NSDictionary *)headerElements bodyElements:(NSDictionary *)bodyElements
{
	NSMutableString *serializedForm = [NSMutableString string];
	
	[serializedForm appendFormat:@"<?xml version=\"1.0\" encoding=\"utf-8\"?>\n"];
	[serializedForm appendFormat:@"<soap:Envelope xmlns:soap=\"http://schemas.xmlsoap.org/soap/envelope/\"\n"];
	[serializedForm appendFormat:@"xmlns:xsl=\"http://www.w3.org/1999/XSL/Transform\" xsl:version=\"1.0\"\n"];
	[serializedForm appendFormat:@"xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\"\n"];
	[serializedForm appendFormat:@"xmlns:xsd=\"http://www.w3.org/2001/XMLSchema\"\n"];
	[serializedForm appendFormat:@"xmlns:MybusDotNetSvc=\"http://dotnet.ws.its.washington.edu\"\n"];
	[serializedForm appendFormat:@">\n"];
	
	if(headerElements != nil) {
		[serializedForm appendFormat:@"<soap:Header>\n"];
		
		for(NSString *key in [headerElements allKeys]) {
			id header = [headerElements objectForKey:key];
			NSString *elementName = [NSString stringWithFormat:@"%@:%@", [header nsPrefix], key];
			
			[serializedForm appendFormat:@"%@\n", [header serializedFormUsingElementName:elementName]];
		}
		
		[serializedForm appendFormat:@"</soap:Header>"];
	}
	
	if(bodyElements != nil) {
		[serializedForm appendFormat:@"<soap:Body>\n"];
		
		for(NSString *key in [bodyElements allKeys]) {
			id body = [bodyElements objectForKey:key];
			NSString *elementName = [NSString stringWithFormat:@"%@:%@", [body nsPrefix], key];
			
			[serializedForm appendFormat:@"%@\n", [body serializedFormUsingElementName:elementName]];
		}
		
		[serializedForm appendFormat:@"</soap:Body>\n"];
	}
	
	[serializedForm appendFormat:@"</soap:Envelope>"];
	
	return serializedForm;
}
@end
@implementation MybusDotNetSoapResponse
@synthesize headers;
@synthesize bodyParts;
- (id)init
{
	if((self = [super init])) {
		headers = nil;
		bodyParts = nil;
	}
	
	return self;
}
@end
