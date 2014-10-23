//
//  NumberHandler.m
//  BlocExercises
//
//  Created by Aaron on 6/11/14.
//
//

#import "NumberHandler.h"

@implementation NumberHandler

- (NSNumber *) numberThatIsTwiceAsBigAsNumber:(NSNumber *)number {
    
    // I suspect there is a shorthand way to figure this problem out
    int intNumber = [number intValue];
    intNumber = intNumber * 2;
    NSNumber *doubleNumber = [NSNumber numberWithInt:intNumber];
    
    return doubleNumber;
}

- (NSArray *) arrayOfNumbersBetweenNumber:(NSInteger)number andOtherNumber: (NSInteger)otherNumber {
    
    NSInteger small = MIN(number, otherNumber);
    NSInteger large = MAX(number, otherNumber);
    NSMutableArray *numberArray = [[NSMutableArray alloc] init];
    NSLog(@"%ld, %ld", (long)small, (long)large);
    
    for (small; small <= large; small++) {
        NSNumber *numberForArray = [NSNumber numberWithInteger:small];
        [numberArray addObject:numberForArray];
        NSLog(@"%@", numberForArray);
    }
    return numberArray;
}

- (NSInteger) lowestNumberInArray:(NSArray *)arrayOfNumbers {

    NSNumber *arrayNumber = [arrayOfNumbers firstObject];
    NSInteger finalNumber =  [arrayNumber integerValue];
    
    for (NSNumber *number in arrayOfNumbers) {
        int testNumber = [number intValue];
        if (testNumber < finalNumber) {
            finalNumber = testNumber;
        }
    }
    return finalNumber;
}

@end
