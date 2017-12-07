//
//  ShoppingItemCell.h
//  Student Food App
//
//  Created by Daniel Marshall [el16dm] on 05/12/2017.
//  Copyright © 2017 Daniel Marshall [el16dm]. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ShoppingTableViewController.h"



@class ShoppingTableViewController;
@interface ShoppingItemCell : UITableViewCell <UITextFieldDelegate>

- (IBAction)ItemBought:(UIButton *)sender;
@property (weak, nonatomic) IBOutlet UILabel *ItemName;

@end
