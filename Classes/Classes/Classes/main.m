//
//  main.m
//  Classes
//
//  Created by Mikołaj Skawiński on 06.09.2018.
//  Copyright © 2018 Mikołaj Skawiński. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
#import "Person2.h"
#import "Dog.h"
#import "NSString+RemovingWhitespaces.h"
#import "Person3.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Person *person = [Person new];
        [person printGreetingFromInterface];
        
        // that doesnt work
        // [person printGreetingNotInInterface];
        
        // that works after importing Dog.h cause selector is just name of method
        [person performSelector:@selector(printGreetingNotInInterface)];
        
        [person printCustomGreeting:@"Welcome!"];
        [person printGreetingTo:@"Natasha"];
        [person printGreetingTo:@"Ksenia" atTimeOfDay:@"afternoon"];
        NSString* greetingInFrench = [person fetchGreetingTo:@"Andre" atTimeOfDay:@"evening"][@"French"];
        NSLog(@"%@", greetingInFrench);
        [person performSelector:@selector(printGreetingTo:atTimeOfDay:) withObject:@"Kamil" withObject:@"morning"];
        
        // class method
        [Person genericGreeting];
        
        Person2 *person2 = [Person2 new];
        // dot notation is syntactic sugar behind the scene it looks like this:
        // [person2 setName:@"Katia"];
        person2.name = @"Katia";
        [person2 printGreeting];
        for (int i = 0; i < 10; ++i) {
            [person2 getOlder];
        }
        
        
        [person2 introduceYourself];
        
        Person2 *person21 = [[Person2 alloc] initWithName:@"Maciek"];
        [person21 printGreeting];
        
        NSString *sentence = @"Too cool for l1f3";
        NSString *hashtagSentence = [NSString stringWithFormat:@"#%@", [sentence ms_stringByRemovingWhitespaces]];
        NSLog(@"%@", hashtagSentence);
        
        Person3 *person3 = [[Person3 alloc] initWithName:@"Natalia"];
        NSString *greeting3 = [person3 fetchGreetingForTime:@"afternoon"];
        NSLog(@"%@", greeting3);
    }
    return 0;
}
