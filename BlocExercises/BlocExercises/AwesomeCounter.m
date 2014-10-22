//
//  AwesomeCounter.m
//  BlocExercises
//
//  Created by Aaron on 6/10/14.
//
//

#import "AwesomeCounter.h"

@implementation AwesomeCounter

- (NSString *) stringWithNumbersBetweenNumber:(NSInteger)number andOtherNumber: (NSInteger)otherNumber {
    
    NSInteger start = MIN(number, otherNumber);
    NSInteger end = MAX(number, otherNumber);
    
    NSString *numberString = [[NSString alloc] init];
    numberString = [NSString stringWithFormat:@"%ld", (long)start];
    NSLog(@"The current string is: %@", numberString);
    
    
    while (start < end) {
        ++start;
        numberString = [numberString stringByAppendingFormat:@"%ld", (long)start];
        NSLog(@"The current string is: %@", numberString);
    }
    
    return numberString;
}

@end
