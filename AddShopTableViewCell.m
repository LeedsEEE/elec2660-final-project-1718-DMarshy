//
//  AddShopTableViewCell.m
//  Student Food App
//
//  Created by Daniel Marshall [el16dm] on 05/12/2017.
//  Copyright © 2017 Daniel Marshall [el16dm]. All rights reserved.
//

#import "AddShopTableViewCell.h"

@implementation AddShopTableViewCell
- (instancetype)init
{
    self = [super init];
    if (self) {
        NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
        [defaults setInteger:2 forKey:@"numberOfRows"];
        [defaults synchronize];
        self.numberOfCells = [defaults integerForKey:@"numberOfRows"];
    }
    return self;
}

- (void)awakeFromNib {
    [super awakeFromNib];
 /*
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    [defaults setInteger:2 forKey:@"numberOfRows"];
    [defaults synchronize];
    self.numberOfCells = [defaults integerForKey:@"numberOfRows"];
    
*/
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}


- (IBAction)AddShopItem:(UIButton *)sender {
    self.numberOfCells ++;
     NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    NSInteger newNumberOfRows = [defaults integerForKey:@"numberOfRows"]+1;
    [defaults setInteger:newNumberOfRows forKey:@"numberOfRows"];
 
    [defaults synchronize];
    NSLog(@"number of rows = %ld",[defaults integerForKey:@"numberOfRows"]);
    self.shoppingTableViewController = [[ShoppingTableViewController alloc]init];


    //[self.shoppingTableViewController.tableView reloadData];
    
}
@end
