//
//  ShoppingViewController.h
//  Student Food App
//
//  Created by Daniel Marshall [el16dm] on 05/12/2017.
//  Copyright © 2017 Daniel Marshall [el16dm]. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AddShopTableViewCell.h"
#import "ShoppingItemCell.h"


@interface ShoppingViewController : UIViewController
@property (nonatomic, strong) AddShopTableViewCell *addItem;
@property (nonatomic, strong) ShoppingItemCell *item;
@end
