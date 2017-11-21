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
        bread.itemCount = 2;
 
        [self.inventoryArray addObject: addItem];//index 0
        [self.inventoryArray addObject: bread];// index 1
        
        
        
    }
    return self;
}
 
@end
