//
//  NSString+RemovingWhitespaces.m
//  Classes
//
//  Created by Mikołaj Skawiński on 07.09.2018.
//  Copyright © 2018 Mikołaj Skawiński. All rights reserved.
//

#import "NSString+RemovingWhitespaces.h"

@implementation NSString (RemovingWhitespaces)
- (NSString *)ms_stringByRemovingWhitespaces {
    return [self stringByReplacingOccurrencesOfString:@" " withString:@""];
}
@end
