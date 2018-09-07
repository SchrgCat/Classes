//
//  Person2.h
//  Classes
//
//  Created by Mikołaj Skawiński on 07.09.2018.
//  Copyright © 2018 Mikołaj Skawiński. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person2 : NSObject

@property NSString *name;
@property (readonly) int age;
- (void)printGreeting;
- (void)getOlder;
- (void)introduceYourself;
- (instancetype) initWithName: (NSString*)name;

@end
