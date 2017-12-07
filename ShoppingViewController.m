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
    self.shopping = [[ShoppingDataModel alloc] init];
    
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)nameentered:(UITextField *)sender {
    ShoppingItem *tempItemName = [[ShoppingItem alloc] init];
    tempItemName.name = sender.text;
    [self.shopping.shoppingArray addObject:tempItemName.name];
    NSLog(@"item = %@",tempItemName.name);
    
    NSUserDefaults *inventorydefaults = [NSUserDefaults standardUserDefaults];
    if([[inventorydefaults objectForKey:[NSString stringWithFormat:@"s%d",1]] isEqualToString:@"Enter Item"]){
        
        [inventorydefaults setObject:self.ItemName.text forKey:[NSString stringWithFormat:@"s%d",1]];
        [inventorydefaults synchronize];
    }
    else{
    
    self.addedItemName.text = [NSString stringWithFormat:@"%@ Added!",tempItemName.name];
    

    int i;
    for (i=1; [inventorydefaults objectForKey:[NSString stringWithFormat:@"s%d",i]] != NULL; i++) {
        
          }
    [inventorydefaults setObject:self.ItemName.text forKey:[NSString stringWithFormat:@"s%d",i]];
    [inventorydefaults synchronize];
    
    }
    
}
@end
