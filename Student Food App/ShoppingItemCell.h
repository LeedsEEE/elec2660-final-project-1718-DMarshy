//
//  ShoppingItemCell.h
//  Student Food App
//
//  Created by Daniel Marshall [el16dm] on 05/12/2017.
//  Copyright © 2017 Daniel Marshall [el16dm]. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ShoppingTableViewController.h"
#import "AddShopTableViewCell.h"
@class AddShopTableViewCell;

@class ShoppingTableViewController;
@interface ShoppingItemCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UITextField *ItemName;
- (IBAction)ItemBought:(UIButton *)sender;
@property (nonatomic, strong) ShoppingTableViewController *shoppingTableViewController;
@property (nonatomic, strong) AddShopTableViewCell *addItemCell;
- (IBAction)ItemNameAdded:(UITextField *)sender;
@end
