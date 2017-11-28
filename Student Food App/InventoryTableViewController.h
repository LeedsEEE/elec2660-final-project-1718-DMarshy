//
//  InventoryTableViewController.h
//  Student Food App
//
//  Created by Daniel Marshall [el16dm] on 20/11/2017.
//  Copyright © 2017 Daniel Marshall [el16dm]. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "InventoryViewController.h"
#import "InventoryDataModel.h"
#import "InventoryTableViewCell.h"
#import "InventoryItem+CoreDataProperties.h"

@interface InventoryTableViewController : UITableViewController <UITableViewDelegate, UITableViewDataSource>
@property (nonatomic, strong) InventoryDataModel *inventory;
@property (nonatomic, strong) InventoryItem *inventorydictionary;
@end
