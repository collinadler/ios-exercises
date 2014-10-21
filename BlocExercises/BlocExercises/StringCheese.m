//
//  StringCheese.m
//  BlocExercises
//
//  Created by Aaron on 6/9/14.
//
//

#import "StringCheese.h"

@implementation StringCheese

- (NSString *) favoriteCheeseStringWithCheese:(NSString *)cheeseName {
    NSString *favoriteCheeseName = [NSString stringWithFormat:@"My favorite cheese is %@.", cheeseName];
    return favoriteCheeseName;
}

- (NSString *) cheeseNameWithoutCheeseSuffix:(NSString *)cheeseName {
    NSRange cheeseRange = [cheeseName rangeOfString:@" cheese"
                                            options:NSCaseInsensitiveSearch];
    if (cheeseRange.length == 0) {
        return cheeseName;
    } else {
        NSString *noCheeseSuffix = [cheeseName stringByReplacingCharactersInRange:cheeseRange
                                                                       withString:@""];
        return noCheeseSuffix;
    }
}

- (NSString *) numberOfCheesesStringWithCheeseCount:(NSUInteger)cheeseCount {
    if (cheeseCount == 1) {
        NSString *cheeseNumber = [NSString stringWithFormat:@"%lu cheese", (unsigned long)cheeseCount];
        return cheeseNumber;
    } else {
        NSString *cheeseNumber = [NSString stringWithFormat:@"%lu cheeses", (unsigned long)cheeseCount];
        return cheeseNumber;
    }
}

@end
