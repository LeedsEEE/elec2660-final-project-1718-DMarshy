//
//  InventoryItem+AddInventoryItem.m
//  Student Food App
//
//  Created by Daniel Marshall [el16dm] on 27/11/2017.
//  Copyright © 2017 Daniel Marshall [el16dm]. All rights reserved.
//

#import "InventoryItem+AddInventoryItem.h"
#import "AppDelegate.h"
@implementation InventoryItem (AddInventoryItem)



+ (InventoryItem *)addItemInfoFromDictionary:(NSDictionary *)ItemInfo{
    AppDelegate *appDelegate = (AppDelegate *)[[UIApplication sharedApplication] delegate];
    NSManagedObjectContext *context = [appDelegate managedObjectContext];
    
    InventoryItem *inventoryItemEntity = nil;
    
    inventoryItemEntity =[NSEntityDescription insertNewObjectForEntityForName:@"InventoryItem" inManagedObjectContext:context];
    
    inventoryItemEntity.name = [ItemInfo valueForKey:@"name"];
    inventoryItemEntity.amount = [ItemInfo valueForKey:@"amount"];
    
    
    //create a new object
    return inventoryItemEntity;
    
}


@end
