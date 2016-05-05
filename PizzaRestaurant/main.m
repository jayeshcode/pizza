//
//  main.m
//  PizzaRestaurant
//
//  Created by Steven Masuch on 2014-07-19.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Kitchen.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSLog(@"Please pick your pizza size and toppings:");
        
        Kitchen *restaurantKitchen = [Kitchen new];
        
        while (TRUE) {
            // Loop forever
            
            NSLog(@"> ");
            char str[100];
            fgets (str, 100, stdin);
            
            NSString *inputString = [[NSString alloc] initWithUTF8String:str];
            
            inputString = [inputString stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
            
            NSLog(@"Input was %@", inputString);
            
            NSString* firstWordString =[[inputString componentsSeparatedByString:@" "] objectAtIndex:0];
            PizzaSize firstWord;
            if ([firstWordString isEqualToString:@"small"]) {
                firstWord = PizzaSizeSmall;
            } else if ([firstWordString isEqualToString:@"medium"]) {
                firstWord = PizzaSizeMedium;
            } else if ([firstWordString isEqualToString:@"large"]) {
                firstWord = PizzaSizeLarge;
            }
                      
                
            // Take the first word of the command as the size, and the rest as the toppings
            NSArray *commandWords = [inputString componentsSeparatedByString:firstWordString];
            NSLog(@"toppings %@",commandWords);
            // And then send some message to the kitchen...
          
            [[restaurantKitchen makePizzaWithSize:firstWord toppings:commandWords]yourOrder]
            ;
        
        }

    }
    return 0;
}

