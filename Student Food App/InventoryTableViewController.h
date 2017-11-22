//
//  InventoryTableViewController.h
//  Student Food App
//
//  Created by Daniel Marshall [el16dm] on 20/11/2017.
//  Copyright © 2017 Daniel Marshall [el16dm]. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Inventory.h"
#import "InventoryTableViewCell.h"
#import "InventoryViewController.h"
#import "InventoryDataModel.h"

@interface InventoryTableViewController : UITableViewController <UITableViewDelegate, UITableViewDataSource>

@property (nonatomic, strong) InventoryDataModel *inventory;

@end
