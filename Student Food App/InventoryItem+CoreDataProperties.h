//
//  InventoryItem+CoreDataProperties.h
//  Student Food App
//
//  Created by Daniel Marshall [el16dm] on 27/11/2017.
//  Copyright © 2017 Daniel Marshall [el16dm]. All rights reserved.
//

#import "InventoryItem+CoreDataClass.h"


NS_ASSUME_NONNULL_BEGIN

@interface InventoryItem (CoreDataProperties)

+ (NSFetchRequest<InventoryItem *> *)fetchRequest;

@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSString *amount;

@end

NS_ASSUME_NONNULL_END
