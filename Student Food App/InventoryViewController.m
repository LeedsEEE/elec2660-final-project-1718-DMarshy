//
//  InventoryViewController.m
//  Student Food App
//
//  Created by Daniel Marshall [el16dm] on 21/11/2017.
//  Copyright © 2017 Daniel Marshall [el16dm]. All rights reserved.
//

#import "InventoryViewController.h"

@interface InventoryViewController ()

@end

@implementation InventoryViewController;


- (void)viewDidLoad {
    [super viewDidLoad];
    self.inventory = [[InventoryDataModel alloc] init];
    self.amount.delegate = self;
    self.amount.dataSource = self;

}


- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView{
    return 1;
}
- (NSInteger)pickerView:(UIPickerView *)pickerView
numberOfRowsInComponent:(NSInteger)component{
    return 100;
}
- (NSString *)pickerView:(UIPickerView *)pickerView
             titleForRow:(NSInteger)row
            forComponent:(NSInteger)component{
    NSString *coordinate = [NSString stringWithFormat:@"%ld",row+1];
    self.Row = row;
    return coordinate;
    
}




- (IBAction)addToList:(UIButton *)sender{
    
    NSUserDefaults *inventorydefaults = [NSUserDefaults standardUserDefaults];
    int i;
    for (i=1; [inventorydefaults objectForKey:[NSString stringWithFormat:@"k%d",i]] != NULL; i++) {

        
    }
    [inventorydefaults setInteger:self.Row forKey:[NSString stringWithFormat:@"a%d",i]];
    [inventorydefaults setObject:self.nameField.text forKey:[NSString stringWithFormat:@"k%d",i]];
    [inventorydefaults synchronize];
    self.outputTextView.text = [inventorydefaults objectForKey:[NSString stringWithFormat:@"k%d",i]];

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




- (IBAction)InventoryTextField:(UITextField *)sender {
 
     Inventory *tempItemName = [[Inventory alloc] init];
     tempItemName.itemName = sender.text;
     tempItemName.itemCount = 0;
     [self.inventory.inventoryArray addObject: tempItemName];
    NSLog(@"item = %@",tempItemName.itemName);

}



@end
