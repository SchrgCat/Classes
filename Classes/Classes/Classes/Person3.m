//
//  Person3.m
//  Classes
//
//  Created by Mikołaj Skawiński on 07.09.2018.
//  Copyright © 2018 Mikołaj Skawiński. All rights reserved.
//

#import "Person3.h"

@implementation Person3

@synthesize name = _name;

- (NSString *)name {
    if (_name == nil) {
        return @"Annonymous";
    } else {
        return _name;
    }
}

- (void)setName:(NSString *)name {
    _name = name;
}

- (instancetype)initWithName:(NSString *)name {
    if(self = [super init]) {
        self.name = name;
    }
    return self;
}

- (NSString *)fetchGreetingForTime:(NSString *)time {
    return [NSString stringWithFormat:@"Good %@, %@!", time, self.name];
}

@end
