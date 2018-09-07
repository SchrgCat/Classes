//
//  Person.m
//  Classes
//
//  Created by Mikołaj Skawiński on 06.09.2018.
//  Copyright © 2018 Mikołaj Skawiński. All rights reserved.
//

#import "Person.h"

@implementation Person

- (void) printCustomGreeting: (NSString*)greeting {
    NSLog(@"%@", greeting);
}

- (void)printGreetingFromInterface {
    NSLog(@"Hello!");
}

- (void)printGreetingNotInInterface {
    NSLog(@"Hello!");
}

- (void)printGreetingTo: (NSString*)name {
    NSLog(@"Hello, %@", name);
}

- (void)printGreetingTo: (NSString*)name atTimeOfDay: (NSString*)time {
    if ([time isEqualToString:@"morning"]) {
        NSLog(@"Good morning, %@", name);
    } else if ([time isEqualToString:@"afternoon"]) {
        NSLog(@"Good afternoon, %@", name);
    } else {
        NSLog(@"Good evening, %@", name);
    }
}

- (NSDictionary*)fetchGreetingTo: (NSString*)name atTimeOfDay: (NSString*)time {
    if ([time isEqualToString:@"morning"]) {
        return @{
                 @"English": [NSString stringWithFormat:@"Good morning, %@", name],
                 @"French": [NSString stringWithFormat:@"Bonjour, %@", name]
                 };
    } else if ([time isEqualToString:@"afternoon"]) {
        return @{
                 @"English": [NSString stringWithFormat:@"Good afternoon, %@", name],
                 @"French": [NSString stringWithFormat:@"Bonne apres-midi, %@", name]
                 };
    } else {
        return @{
                 @"English": [NSString stringWithFormat:@"Good evening, %@", name],
                 @"French": [NSString stringWithFormat:@"Bonsoir, %@", name]
                 };
    }
}

+ (void)genericGreeting {
    NSLog(@"Greetings, earthlings.");
}

@end
