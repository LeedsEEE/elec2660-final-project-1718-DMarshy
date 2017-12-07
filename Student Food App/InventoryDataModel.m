//
//  InventoryDataModel.m
//  Student Food App
//
//  Created by Daniel Marshall [el16dm] on 21/11/2017.
//  Copyright © 2017 Daniel Marshall [el16dm]. All rights reserved.
//

#import "InventoryDataModel.h"

@implementation InventoryDataModel

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.inventoryArray = [NSMutableArray array];
        
        Inventory *addItem = [[Inventory alloc] init];
        addItem.itemName = @"Add Item";
        addItem.itemCount = 0;
        
        Inventory *bread = [[Inventory alloc] init];
        bread.itemName = @"Bread";
        bread.itemCount = 3;
        
        
 
       [self.inventoryArray addObject: addItem];//index 0
       [self.inventoryArray addObject: bread];// index 1
        NSUserDefaults *inventorydefaults = [NSUserDefaults standardUserDefaults];
        
        self.addedInventoryArray = [NSMutableArray array];
        Inventory *k1 = [[Inventory alloc] init];
        k1.itemName = [inventorydefaults objectForKey:[NSString stringWithFormat:@"k%d",1]];
        k1.key = 1;
        Inventory *k2 = [[Inventory alloc] init];
        k2.itemName = [inventorydefaults objectForKey:[NSString stringWithFormat:@"k%d",2]];
        k2.key = 2;
        Inventory *k3 = [[Inventory alloc] init];
        k3.itemName = [inventorydefaults objectForKey:[NSString stringWithFormat:@"k%d",3]];
        k3.key = 3;
        Inventory *k4 = [[Inventory alloc] init];
        k4.itemName = [inventorydefaults objectForKey:[NSString stringWithFormat:@"k%d",4]];
        k4.key = 4;
        Inventory *k5 = [[Inventory alloc] init];
        k5.itemName = [inventorydefaults objectForKey:[NSString stringWithFormat:@"k%d",5]];
        k5.key = 5;
        
        [self.addedInventoryArray addObject:k1];
        [self.addedInventoryArray addObject:k2];
        [self.addedInventoryArray addObject:k3];
        [self.addedInventoryArray addObject:k4];
        [self.addedInventoryArray addObject:k5];
        
        
    }
    return self;
}
 
@end
