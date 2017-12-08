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
- (NSString *)pickerView:(UIPickerView *)pickerView//sets data in picker to be value of the row+1
             titleForRow:(NSInteger)row
            forComponent:(NSInteger)component{
    NSString *coordinate = [NSString stringWithFormat:@"%ld",row+1];
    self.Row = row+1;
    NSLog(@"Picker Value = %ld",self.Row);
    return coordinate;

    
}


- (IBAction)addToList:(UIButton *)sender{
    
    NSUserDefaults *inventorydefaults = [NSUserDefaults standardUserDefaults];
    int i;
    
    for (i=1; [inventorydefaults objectForKey:[NSString stringWithFormat:@"k%d",i]] != NULL; i++) {//loops through saved data to find first empty cell
        
    }
    [inventorydefaults setInteger:self.Row forKey:[NSString stringWithFormat:@"a%d",i]];//sets input text to first empty cell
    [inventorydefaults setObject:self.nameField.text forKey:[NSString stringWithFormat:@"k%d",i]];
    [inventorydefaults synchronize];//saves data
    self.outputTextView.text = [NSString stringWithFormat:@"Item name =%@\nAmount = %ld",[inventorydefaults objectForKey:[NSString stringWithFormat:@"k%d",i]],[inventorydefaults integerForKey:[NSString stringWithFormat:@"a%d",i]]];//displays the input data in text view

}


- (IBAction)InventoryTextField:(UITextField *)sender {
 
     NSString *tempItemName = [[NSString alloc] init];//creates a temporary item
     tempItemName = sender.text;

    NSLog(@"item = %@",tempItemName);

}



@end
