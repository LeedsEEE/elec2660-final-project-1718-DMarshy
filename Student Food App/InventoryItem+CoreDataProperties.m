//
//  InventoryItem+CoreDataProperties.m
//  Student Food App
//
//  Created by Daniel Marshall [el16dm] on 27/11/2017.
//  Copyright © 2017 Daniel Marshall [el16dm]. All rights reserved.
//

#import "InventoryItem+CoreDataProperties.h"

@implementation InventoryItem (CoreDataProperties)

+ (NSFetchRequest<InventoryItem *> *)fetchRequest {
	return [[NSFetchRequest alloc] initWithEntityName:@"InventoryItem"];
}

@dynamic name;
@dynamic amount;

@end
