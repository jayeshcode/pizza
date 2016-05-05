//
//  Pizza.m
//  PizzaRestaurant
//
//  Created by Jayesh Wadhwani on 2016-05-05.
//  Copyright © 2016 Lighthouse Labs. All rights reserved.
//

#import "Pizza.h"

@implementation Pizza
-(id)initwithToppings:(NSMutableArray*)t andSize:(PizzaSize)ps;
{
    _arrayoftoppings=t;
     _sizep = ps;
    return self;
}


-(void)yourOrder
{
    NSLog(@"@ %@ %d",self.arrayoftoppings, self.sizep);

}
@end
