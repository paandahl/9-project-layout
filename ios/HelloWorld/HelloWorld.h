#import <Foundation/Foundation.h>
#import "RCTBridgeModule.h"

@interface HelloWorld : NSObject <RCTBridgeModule>

+ (NSString*)sayHello;

@end
