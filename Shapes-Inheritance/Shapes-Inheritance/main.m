//
//  main.m
//  Shapes-Inheritance
//
//  Created by Arvo on 15/3/26.
//  Copyright (c) 2015年 Arvo. All rights reserved.
//

#import <Foundation/Foundation.h>
typedef enum  {
  kCircle,
  kRectangle,
  kEgg
} ShapeType;
typedef enum {
  kRedColor,
  kGreenColor,
  kBlueColor
} ShapeColor;
typedef struct {
  int x, y, width, height;
} ShapeRect;
NSString *colorName (ShapeColor colorName) {
  switch (colorName) {
    case kRedColor:
      return @"red";
      break;
      
    default:
      break;
  }
  return @"no clue";
}
@interface Shape : NSObject {
  ShapeColor fillColor;
  ShapeRect  bounds;
}

- (void) setFillColor: (ShapeColor) fillColor;
- (void) setBounds   : (ShapeRect)  bounds;
- (void) draw;
@end //Shape


@implementation Shape

- (void)setFillColor:(ShapeColor)c {
  fillColor = c;
}

- (void)setBounds:(ShapeRect)b {
  bounds = b;
}

- (void)draw {

}
@end

@interface Circle : Shape
@end
@interface Rectangle : Shape
@end

@implementation Circle

- (void)draw {
  NSLog(@"drawing acircle at (%d %d %d %d) in %@",
  bounds.x, bounds.y,
  bounds.width, bounds.height,
  colorName(fillColor));
}

@end

int main(int argc, const char * argv[]) {
  id S[3];
  ShapeRect rect = { 0, 0 , 10, 30};
  S[0] = [Circle new];
  [S[0] setBounds:rect];
  [S[0] setFillColor: kRedColor];
  [S[0] draw];
    return 0;
}
