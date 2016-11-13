#import <XCTest/XCTest.h>
#import "RCTTestRunner.h"

#define RCT_TEST(name)                  \
- (void)test##name                      \
{                                       \
[_runner runTest:_cmd module:@#name]; \
}

@interface HelloWorldIntegrationTests : XCTestCase

@end

@implementation HelloWorldIntegrationTests
{
  RCTTestRunner *_runner;
}

- (void)setUp {
  setenv("CI_USE_PACKAGER", "TRUE", true);
  _runner = RCTInitRunnerForApp(@"integration-test/IntegrationTestsApp", nil);
}

- (void)tearDown {
  [super tearDown];
}

RCT_TEST(HelloWorldTest)

@end
