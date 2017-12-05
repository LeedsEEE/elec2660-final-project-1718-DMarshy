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
#import "InventoryItem+AddInventoryItem.h"
@class InventoryViewController;


@interface InventoryTableViewController : UITableViewController <UITableViewDataSource, UITableViewDelegate>
@property (nonatomic, strong) InventoryDataModel *inventory;
@property (nonatomic, strong) InventoryItem *inventorydictionary;
@property (nonatomic, strong) InventoryViewController *additem;
@end
