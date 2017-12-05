//
//  ShoppingItemCell.h
//  Student Food App
//
//  Created by Daniel Marshall [el16dm] on 05/12/2017.
//  Copyright © 2017 Daniel Marshall [el16dm]. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ShoppingItemCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UITextField *ItemName;
- (IBAction)ItemBought:(UIButton *)sender;
@end
