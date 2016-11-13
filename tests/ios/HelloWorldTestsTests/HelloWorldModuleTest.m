#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>

#import "HelloWorld.h"

@interface HelloWorldModuleTest : XCTestCase

@end

@implementation HelloWorldModuleTest

- (void)setUp {
  [super setUp];
}

- (void)tearDown {
  [super tearDown];
}

- (void)testSayHello {
  XCTAssertEqualObjects(@"Native hello world!", [HelloWorld sayHello]);
}


@end
