//
//  Person3.h
//  Classes
//
//  Created by Mikołaj Skawiński on 07.09.2018.
//  Copyright © 2018 Mikołaj Skawiński. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Person3 : NSObject

@property (null_resettable) NSString* name;
- (instancetype)initWithName: (NSString*)name;
- (NSString*)fetchGreetingForTime: (NSString*)time;

@end

NS_ASSUME_NONNULL_END
