//
//  main.m
//  Car
//
//  Created by Arvo on 15/3/27.
//  Copyright (c) 2015年 Arvo. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Tire: NSObject
- (void) setTire: (Tire *) tire atIndex: (int) index;
- (Tire *) tireAtIndex: (int) index;
@end //Tire
@interface Engine : NSObject
@end //Engine


@implementation Tire
- (NSString *) description {
  return (@"I am a tire. I last a while.");
}

@end
@implementation Engine
- (NSString *) description {
  return (@"I am a engin. Vrooom!");
}
@end

@interface Car : NSObject {
  Engine *engine;
  Tire *tires[4];
}
- (Engine *) engine;
- (void) setEngine: (Engine *) newEngine;
- (Tire *) tireAtIndex: (int) index;
- (void) setTire: (Tire *) tire atIndex: (int) index;
- (void) print;

@end //Car

@implementation Car

- (id) init {
  if (self = [super init]) {
    engine   = [Engine new];
    tires[0] = [Tire new];
    tires[1] = [Tire new];
    tires[2] = [Tire new];
    tires[3] = [Tire new];
  }
  return (self);
}

- (Engine *) engine {
  return (engine);
}

- (void) setEngine: (Engine *) newEngine {
  engine = newEngine;
}

- (void) print {
  NSLog(@"%@", engine);
  NSLog(@"%@", tires[0]);
  NSLog(@"%@", tires[1]);
  NSLog(@"%@", tires[2]);
  NSLog(@"%@", tires[3]);
  
}

@end //Car
int main(int argc, const char * argv[]) {
  Car *car;
  car = [Car new];
  [car print];
  
  return 0;
}
