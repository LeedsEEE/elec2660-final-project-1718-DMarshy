//
//  ShoppingDataModel.m
//  Student Food App
//
//  Created by Daniel Marshall [el16dm] on 05/12/2017.
//  Copyright © 2017 Daniel Marshall [el16dm]. All rights reserved.
//

#import "ShoppingDataModel.h"

@implementation ShoppingDataModel

- (instancetype)init
{
    self = [super init];
    if (self) {
        NSUserDefaults *inventorydefaults = [NSUserDefaults standardUserDefaults];
        
        self.shoppingArray = [NSMutableArray array];
        
        ShoppingItem *s1 = [[ShoppingItem alloc] init];
        s1.name= [inventorydefaults objectForKey:[NSString stringWithFormat:@"s%d",1]];
    
        ShoppingItem *s2 = [[ShoppingItem alloc] init];
        s2.name = [inventorydefaults objectForKey:[NSString stringWithFormat:@"s%d",2]];

        [self.shoppingArray addObject:s1];
        [self.shoppingArray addObject:s2];
    }
    return self;
}
@end
