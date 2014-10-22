//
//  StarTrekArrays.m
//  BlocExercises
//
//  Created by Aaron on 6/10/14.
//
//

#import "StarTrekArrays.h"

@implementation StarTrekArrays

- (NSArray *) arrayOfStarTrekCharactersFromString:(NSString *)characterString {
    
    NSArray *characterArray = [characterString componentsSeparatedByString:@";"];
    for (NSString *name in characterArray) {
        NSLog(@"The name is: %@", name);
    }
    
    return characterArray;
}

- (NSString *) stringOfStarTrekCharactersFromArray:(NSArray *)characterArray {
    NSString *characterString = [characterArray componentsJoinedByString:@";"];
    NSLog(@"%@", characterString);
    return characterString;
}

- (NSArray *) alphabeticallySortedStarTrekCharactersFromArray:(NSArray *)characterArray {
    
    NSMutableArray *sortedArray = [characterArray mutableCopy];
    
    NSSortDescriptor *sortDescriptor = [[NSSortDescriptor alloc] initWithKey:nil
                                                                   ascending:YES
                                                                    selector:@selector(localizedCaseInsensitiveCompare:)];
    
    [sortedArray sortUsingDescriptors:@[sortDescriptor]];
    
    for (NSString *name in sortedArray) {
        NSLog(@"%@", name);
    }
    
    return sortedArray;
}

- (BOOL) characterArrayContainsWorf:(NSArray *)characterArray {

    NSMutableArray *filteredArray = [characterArray mutableCopy];
    NSPredicate *containsWorf = [NSPredicate predicateWithFormat:@"SELF CONTAINS[c] 'Worf'"];
    
    [filteredArray filterUsingPredicate:containsWorf];
    
    if (filteredArray.count >= 1) {
        return YES;
    } else {
        return NO;
    }
}

@end
