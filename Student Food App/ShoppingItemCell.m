//
//  ShoppingItemCell.m
//  Student Food App
//
//  Created by Daniel Marshall [el16dm] on 05/12/2017.
//  Copyright © 2017 Daniel Marshall [el16dm]. All rights reserved.
//

#import "ShoppingItemCell.h"

@implementation ShoppingItemCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}/*
- (instancetype)init
{
    self = [super init];
    if (self) {
        NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
       NSInteger Row = [defaults integerForKey:[NSString stringWithFormat:@"%ld",self.shoppingTableViewController.tableView.indexPathForSelectedRow.row]];
        for(i=0,i++){
            self.ItemName.text = self.ItemName
  [defaults integerForKey:[NSString stringWithFormat:@"%ld",Row+]]
            
            
        }
            
    }
    return self;
}*/


- (IBAction)ItemBought:(UIButton *)sender {
        self.addItemCell.numberOfCells =self.addItemCell.numberOfCells-1;
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    NSInteger newNumberOfRows = [defaults integerForKey:@"numberOfRows"]-1;
    [defaults setInteger:newNumberOfRows forKey:@"numberOfRows"];
    [defaults synchronize];
    NSLog(@"number of rows = %ld",[defaults integerForKey:@"numberOfRows"]);
    self.shoppingTableViewController = [[ShoppingTableViewController alloc]init];
}

- (IBAction)ItemNameAdded:(UITextField *)sender {
    
    
}
@end
