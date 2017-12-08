//
//  InventoryViewController.h
//  Student Food App
//
//  Created by Daniel Marshall [el16dm] on 21/11/2017.
//  Copyright © 2017 Daniel Marshall [el16dm]. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "InventoryTableViewCell.h"
@class InventoryTableViewCell;


@interface InventoryViewController : UIViewController <UITextFieldDelegate, UIPickerViewDataSource, UIPickerViewDelegate>
- (IBAction)InventoryTextField:(UITextField *)sender;

- (IBAction)addToList:(UIButton *)sender;
@property (weak, nonatomic) IBOutlet UITextView *outputTextView;
@property (weak, nonatomic) IBOutlet UITextField *nameField;
@property (weak, nonatomic) IBOutlet UITextField *amountTextField;

@property (weak, nonatomic) IBOutlet UIPickerView *amount;
@property NSInteger Row;
@property (nonatomic, strong) InventoryTableViewCell *inventoryTableViewCell;

@end
