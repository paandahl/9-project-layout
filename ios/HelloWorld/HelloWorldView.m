#import "HelloWorldView.h"

@implementation HelloWorldView {
  UILabel * label;
}

- (void)layoutSubviews
{
  [super layoutSubviews];
  label = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, self.bounds.size.width, self.bounds.size.height)];
  label.text = @"Hello world!";
  label.backgroundColor = [UIColor yellowColor];
  [self addSubview:label];
}

@end
