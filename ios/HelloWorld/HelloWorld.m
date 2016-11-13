#import "HelloWorld.h"

@implementation HelloWorld

+ (NSString*)sayHello {
  return @"Native hello world!";
}

RCT_EXPORT_MODULE()

RCT_EXPORT_METHOD(sayHello:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
  resolve([HelloWorld sayHello]);
}

@end
