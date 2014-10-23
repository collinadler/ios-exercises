//
//  StarTrekDictionaries.m
//  BlocExercises
//
//  Created by Aaron on 6/10/14.
//
//

#import "StarTrekDictionaries.h"

@implementation StarTrekDictionaries

- (NSString *)favoriteDrinkForStarTrekCharacterDictionary:(NSDictionary *)characterDictionary {
    return characterDictionary[@"favorite drink"];
}

- (NSArray *)arrayOfFavoriteDrinksForStarTrekCharacters:(NSArray *)charactersArray {
    
    NSMutableArray *favoriteDrinkArray = [[NSMutableArray alloc] init];
    
    for (NSDictionary *character in charactersArray) {
        NSString *favoriteDrink = character[@"favorite drink"];
        [favoriteDrinkArray addObject:favoriteDrink];
    }
        
    for (NSString *drink in favoriteDrinkArray) {
        NSLog(@"The drink is: %@", drink);
    }
    
    return favoriteDrinkArray;
}

- (NSDictionary *)dictionaryWithQuoteAddedToStarTrekCharacterDictionary:(NSDictionary *)characterDictionary {

    NSMutableDictionary *quoteDictionary = [characterDictionary mutableCopy];
    
    [quoteDictionary setValue:@"Random Quote"
                       forKey:@"quote"];
    
    return quoteDictionary;
}

@end
