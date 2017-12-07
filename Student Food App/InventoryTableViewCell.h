//
//  InventoryTableViewCell.h
//  Student Food App
//
//  Created by Daniel Marshall [el16dm] on 21/11/2017.
//  Copyright © 2017 Daniel Marshall [el16dm]. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Inventory.h"
#import "InventoryDataModel.h"
#import "InventoryTableViewController.h"
@class InventoryTableViewController;

@interface InventoryTableViewCell : UITableViewCell
- (IBAction)StepperPressed:(UIStepper *)sender;
@property (weak, nonatomic) IBOutlet UIStepper *stepperValue;
@property (weak, nonatomic) IBOutlet UILabel *stepperCount;
@property (weak, nonatomic) IBOutlet UILabel *invItemName;
@property (strong, nonatomic) InventoryTableViewController *inventory;


@end
