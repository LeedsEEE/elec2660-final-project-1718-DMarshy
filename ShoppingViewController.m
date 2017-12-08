//
//  ShoppingViewController.m
//  Student Food App
//
//  Created by Daniel Marshall [el16dm] on 07/12/2017.
//  Copyright © 2017 Daniel Marshall [el16dm]. All rights reserved.
//

#import "ShoppingViewController.h"

@interface ShoppingViewController ()

@end

@implementation ShoppingViewController

- (void)viewDidLoad {
    [super viewDidLoad];
  
    

}
#pragma Shop Item name added
- (IBAction)nameentered:(UITextField *)sender {
    NSString *tempItemName = [[NSString alloc] init];//create temp string of the text input
    tempItemName = sender.text;

    NSLog(@"item = %@",tempItemName);
    
    NSUserDefaults *inventorydefaults = [NSUserDefaults standardUserDefaults];
    if([[inventorydefaults objectForKey:[NSString stringWithFormat:@"s%d",1]] isEqualToString:@"Enter Item"]){//checks if first item is 'empty'
        self.addedItemName.text = [NSString stringWithFormat:@"%@ Added!",tempItemName];
        [inventorydefaults setObject:self.ItemName.text forKey:[NSString stringWithFormat:@"s%d",1]];
        [inventorydefaults synchronize];
    }
    else{
    self.addedItemName.text = [NSString stringWithFormat:@"%@ Added!",tempItemName];
    int i;
    for (i=1; [inventorydefaults objectForKey:[NSString stringWithFormat:@"s%d",i]] != NULL; i++) {//loops through to find first empty cell
        
          }
    [inventorydefaults setObject:self.ItemName.text forKey:[NSString stringWithFormat:@"s%d",i]];//sets cell data to user input text at first empty cell
    [inventorydefaults synchronize];//saves NSUserDefaults
    
    }
    
}
@end
