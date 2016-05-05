//
//  Pizza.h
//  PizzaRestaurant
//
//  Created by Jayesh Wadhwani on 2016-05-05.
//  Copyright © 2016 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef enum {
    PizzaSizeSmall,
    PizzaSizeMedium,
    PizzaSizeLarge,
} PizzaSize;

@interface Pizza : NSObject
@property NSMutableArray *arrayoftoppings;

@property PizzaSize sizep;

-(id)initwithToppings:(NSArray*)t andSize:(PizzaSize)ps;
-(void)yourOrder;

@end
