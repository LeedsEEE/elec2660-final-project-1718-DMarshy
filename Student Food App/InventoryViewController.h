//
//  InventoryViewController.h
//  Student Food App
//
//  Created by Daniel Marshall [el16dm] on 21/11/2017.
//  Copyright © 2017 Daniel Marshall [el16dm]. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Inventory.h"
#import "InventoryDataModel.h"
#import "InventoryTableViewController.h"

@interface InventoryViewController : UIViewController <UITextFieldDelegate>
- (IBAction)InventoryTextField:(UITextField *)sender;
@property (nonatomic, strong) InventoryDataModel *inventory;


@end
