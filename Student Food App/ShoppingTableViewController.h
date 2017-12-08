//
//  ShoppingTableViewController.h
//  Student Food App
//
//  Created by Daniel Marshall [el16dm] on 20/11/2017.
//  Copyright © 2017 Daniel Marshall [el16dm]. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AddShopTableViewCell.h"
#import "ShoppingItemCell.h"
#import "InventoryTableViewCell.h"

@class AddShopTableViewCell;
@class ShoppingItemCell;
@interface ShoppingTableViewController : UITableViewController
@property (nonatomic, strong) AddShopTableViewCell *addItem;
@property (nonatomic, strong) ShoppingItemCell *item;
@property (nonatomic, strong) InventoryTableViewCell *inventoryTableViewCell;
@property NSInteger tag;
@property (nonatomic, strong) NSString *sharedName;
- (IBAction)itemRemoved:(UIButton *)sender;
-(void)reloadData;





@end
