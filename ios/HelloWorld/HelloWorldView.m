#import "HelloWorldView.h"

@implementation HelloWorldView {
  UILabel * label;
}

- (void)layoutSubviews
{
  [super layoutSubviews];
  label = [[UILabel alloc] initWithFrame:CGRectZero];
  label.text = @"Hello world!";
  [label sizeToFit];
  self.backgroundColor = [UIColor yellowColor];
  [self addSubview:label];
}

@end
