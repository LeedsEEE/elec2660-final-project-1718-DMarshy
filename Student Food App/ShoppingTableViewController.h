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
#import "ShoppingItem.h"
#import "ShoppingDataModel.h"
@class AddShopTableViewCell;
@class ShoppingItemCell;

@interface ShoppingTableViewController : UITableViewController
@property (nonatomic, strong) AddShopTableViewCell *addItem;
@property (nonatomic, strong) ShoppingItemCell *item;
@property (nonatomic, strong) ShoppingDataModel *shoppingItem;
@property (nonatomic, strong) NSString *sharedName;



@end
