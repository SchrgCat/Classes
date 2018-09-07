//
//  Person2.m
//  Classes
//
//  Created by Mikołaj Skawiński on 07.09.2018.
//  Copyright © 2018 Mikołaj Skawiński. All rights reserved.
//

#import "Person2.h"

@interface Person2 ()
@property int age;
@end

@implementation Person2

@synthesize name = _name;

- (void)printGreeting {
    NSLog(@"Hello, %@!", self.name);
}

- (NSString *)name {
    NSLog(@"Reading name!");
    return _name;
}

- (void)setName: (NSString *)name {
    NSLog(@"Writing name!");
    _name = name;
}

- (void)getOlder {
    ++self.age;
}

- (void)introduceYourself {
    NSLog(@"Hi, I'm %@ and I'm %d years old", self.name, self.age);
}

- (instancetype) initWithName: (NSString*)name {
    if (self = [super  init]) {
        self.name = name;
    }
    
    return self;
}

@end
