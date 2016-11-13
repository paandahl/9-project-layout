#import "RCTViewManager.h"
#import "HelloWorldView.h"

@interface HelloWorldViewManager : RCTViewManager
@end

@implementation HelloWorldViewManager

RCT_EXPORT_MODULE()

- (UIView *)view
{
  return [HelloWorldView new];
}

@end
