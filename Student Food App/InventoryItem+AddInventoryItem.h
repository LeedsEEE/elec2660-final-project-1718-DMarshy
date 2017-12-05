//
//  InventoryItem+AddInventoryItem.h
//  Student Food App
//
//  Created by Daniel Marshall [el16dm] on 27/11/2017.
//  Copyright © 2017 Daniel Marshall [el16dm]. All rights reserved.
//

#import "InventoryItem+CoreDataClass.h"
#import <CoreData/CoreData.h>
#import "InventoryDataModel.h"


@interface InventoryItem (AddInventoryItem) 
+ (InventoryItem *)addItemInfoFromDictionary:(NSDictionary *)ItemInfo;
@property(readonly) NSUInteger count;

@property (nonatomic, strong) InventoryDataModel *inventory;

@end
