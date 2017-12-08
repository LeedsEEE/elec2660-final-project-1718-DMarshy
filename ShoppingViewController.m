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
    NSString *tempItemName = [[NSString alloc] init];
    tempItemName = sender.text;

    NSLog(@"item = %@",tempItemName);
    
    NSUserDefaults *inventorydefaults = [NSUserDefaults standardUserDefaults];
    if([[inventorydefaults objectForKey:[NSString stringWithFormat:@"s%d",1]] isEqualToString:@"Enter Item"]){
        self.addedItemName.text = [NSString stringWithFormat:@"%@ Added!",tempItemName];
        [inventorydefaults setObject:self.ItemName.text forKey:[NSString stringWithFormat:@"s%d",1]];
        [inventorydefaults synchronize];
    }
    else{
    self.addedItemName.text = [NSString stringWithFormat:@"%@ Added!",tempItemName];
    int i;
    for (i=1; [inventorydefaults objectForKey:[NSString stringWithFormat:@"s%d",i]] != NULL; i++) {
        
          }
    [inventorydefaults setObject:self.ItemName.text forKey:[NSString stringWithFormat:@"s%d",i]];
    [inventorydefaults synchronize];
    
    }
    
}
@end
