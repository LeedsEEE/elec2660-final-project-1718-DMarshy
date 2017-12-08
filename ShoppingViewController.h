//
//  ShoppingViewController.h
//  Student Food App
//
//  Created by Daniel Marshall [el16dm] on 07/12/2017.
//  Copyright © 2017 Daniel Marshall [el16dm]. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface ShoppingViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *ItemName;
- (IBAction)nameentered:(UITextField *)sender;

@property (weak, nonatomic) IBOutlet UILabel *addedItemName;
@end
