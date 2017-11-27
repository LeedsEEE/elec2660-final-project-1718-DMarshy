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

@implementation InventoryViewController
@synthesize managedObjectContext = _managedObjectContext;
- (void)viewDidLoad {
    [super viewDidLoad];
        self.inventory.inventoryArray = [NSMutableArray alloc];
        self.managedObjectContext = self.managedObjectContext;
    // Do any additional setup after loading the view.
}


- (IBAction)addToList:(UIButton *)sender{
    NSDictionary *ItemInfo = @{@"name":self.nameField.text,@"amount":self.amountTextField.text};
    self.outputTextView.text = [InventoryItem addItemInfoFromDictionary:ItemInfo].description;
    
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
