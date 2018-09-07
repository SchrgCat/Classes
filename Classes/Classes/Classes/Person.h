//
//  Person.h
//  Classes
//
//  Created by Mikołaj Skawiński on 06.09.2018.
//  Copyright © 2018 Mikołaj Skawiński. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject

- (void)printGreetingFromInterface;
- (void) printCustomGreeting: (NSString*) greeting;
- (void)printGreetingTo: (NSString*)name;
- (void)printGreetingTo: (NSString*)name atTimeOfDay: (NSString*)time;
- (NSDictionary*)fetchGreetingTo: (NSString*)name atTimeOfDay: (NSString*)time;
+ (void)genericGreeting;

@end
