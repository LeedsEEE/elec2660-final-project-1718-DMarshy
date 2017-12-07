//
//  ShoppingViewController.h
//  Student Food App
//
//  Created by Daniel Marshall [el16dm] on 07/12/2017.
//  Copyright © 2017 Daniel Marshall [el16dm]. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ShoppingItem.h"
#import "ShoppingDataModel.h"

@interface ShoppingViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *ItemName;
- (IBAction)nameentered:(UITextField *)sender;
@property (nonatomic, strong) ShoppingItem *shoppingItem;
@property (nonatomic, strong) ShoppingDataModel *shopping;
@property (weak, nonatomic) IBOutlet UILabel *addedItemName;
@end
