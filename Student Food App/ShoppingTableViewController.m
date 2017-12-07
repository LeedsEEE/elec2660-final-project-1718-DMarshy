//
//  ShoppingTableViewController.m
//  Student Food App
//
//  Created by Daniel Marshall [el16dm] on 20/11/2017.
//  Copyright © 2017 Daniel Marshall [el16dm]. All rights reserved.
//

#import "ShoppingTableViewController.h"

@interface ShoppingTableViewController ()

@end

@implementation ShoppingTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.item = [[ShoppingItemCell alloc] init];
    self.shoppingItem = [[ShoppingDataModel alloc] init];
    
  /*   NSUserDefaults *inventorydefaults = [NSUserDefaults standardUserDefaults];
    [inventorydefaults setObject:@"Steak" forKey:[NSString stringWithFormat:@"s%d",1]];
    [inventorydefaults setObject:@"Baked Beans" forKey:[NSString stringWithFormat:@"s%d",2]]; //setting first objects value
    [inventorydefaults synchronize];
    NSLog(@"SAVED VALUE = %@",[inventorydefaults stringForKey:[NSString stringWithFormat:@"s%d",1]]);*/
    self.edgesForExtendedLayout = UIRectEdgeNone;
    self.extendedLayoutIncludesOpaqueBars = NO;
    self.automaticallyAdjustsScrollViewInsets = NO;

}
-(void)reloadData{
    [self.tableView reloadData];
}

-(void)viewWillAppear:(BOOL)animated{
    [self.tableView reloadData];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {

    return 2;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    NSInteger numberOfRows;
    if(section == 0){
        numberOfRows = 1;
    }
    else if(section == 1){
    NSUserDefaults *inventorydefaults = [NSUserDefaults standardUserDefaults];
    int i;
        
        {if([inventorydefaults objectForKey:[NSString stringWithFormat:@"s%d",1]] == NULL){
            [inventorydefaults setObject:@"Enter Item" forKey:[NSString stringWithFormat:@"s%d",1]];
            [inventorydefaults synchronize];
            numberOfRows = 1;
        }
        else{
    for (i = 1; [inventorydefaults objectForKey:[NSString stringWithFormat:@"s%d",i]] != NULL; i++) {//checking how many objects have values
        NSLog(@"Array value = %@",[inventorydefaults objectForKey:[NSString stringWithFormat:@"s%d",i]]);
        
        numberOfRows = i;
        NSLog(@"%ld",numberOfRows);
    }
        }
    }
        
}return numberOfRows;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    NSUserDefaults *inventorydefaults = [NSUserDefaults standardUserDefaults];
    if(indexPath.section == 0){
        
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"AddItemCell" forIndexPath:indexPath];
                     return cell;
    }
    else {
        ShoppingItemCell *cell = [tableView dequeueReusableCellWithIdentifier:@"ShoppingItemCell" forIndexPath:indexPath];
        
        int i;
        for (i=1; !([inventorydefaults objectForKey:[NSString stringWithFormat:@"s%d",i]] == nil); i++) {
            
            cell.ItemName.text = [inventorydefaults objectForKey:[NSString stringWithFormat:@"s%ld",indexPath.row+1]];
            cell.ItemName.tag = indexPath.row+1;
            
        }
        return cell;
}
}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

/*
- (IBAction)ItemBought:(UIButton *)sender {
    NSInteger i;
    for (i = 1 ; i<100 ; i++) {
        NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
        NSInteger p=i+1;
        NSString *tempNewObject = [defaults objectForKey:[NSString stringWithFormat:@"key%ld",p]];
        NSString *tempcurrentObject = [NSString stringWithFormat:@"key%ld",i];
        [defaults setObject:tempNewObject forKey:tempcurrentObject];
        [defaults synchronize];
    }
    //    self.addItem.numberOfCells = self.addItem.numberOfCells-1;
        NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
        NSInteger newNumberOfRows = [defaults integerForKey:@"numberOfRows"]-1;
        [defaults setInteger:newNumberOfRows forKey:@"numberOfRows"];
        [defaults synchronize];
        NSLog(@"number of rows = %ld",[defaults integerForKey:@"numberOfRows"]);
        [self.tableView reloadData];
    }

- (IBAction)nameFieldPressed:(UITextField *)sender {
    NSInteger selectedRow = self.tableView.indexPathForSelectedRow.row;
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    [defaults setInteger:selectedRow forKey:@"selected name field"];
    [defaults synchronize];
    NSLog(@"selected row = %ld",[defaults integerForKey:@"selected name field"]);
}*/
/*
- (IBAction)ItemName:(UITextField *)sender {
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
  
   // [defaults setInteger:Row forKey:[NSString stringWithFormat:@"%ld",Row]];
    //[defaults setValue:sender.text forKey:[NSString stringWithFormat:@"%ld",Row]];
    
    
    if([defaults integerForKey:@"selected name field"] == 1){
        [defaults setObject:sender.text forKey:@"keys1"];
        NSLog(@"NAME = %@",[defaults stringForKey:@"name1"]);
        [defaults synchronize];
    }
    if([defaults integerForKey:@"selected name field"] == 2){
        NSLog(@"ROW2 = %ld",[defaults integerForKey:[NSString stringWithFormat:@"%d",2]]);
        [defaults setObject:sender.text forKey:@"keys2"];
            [defaults synchronize];
    }
    if([defaults integerForKey:@"selected name field"] == 3){
        [defaults setObject:sender.text forKey:[NSString stringWithFormat:@"key%ld",(long)3]];
            [defaults synchronize];

    }
    if([defaults integerForKey:[NSString stringWithFormat:@"%d",4]] == 4){
        [defaults setObject:sender.text forKey:[NSString stringWithFormat:@"key%ld",(long)4]];
            [defaults synchronize];

    }
    if([defaults integerForKey:[NSString stringWithFormat:@"%d",5]] == 5){
        [defaults setObject:sender.text forKey:[NSString stringWithFormat:@"key%ld",(long)5]];
            [defaults synchronize];

    }
    if(self.tableView.indexPathForSelectedRow.row == 6){
        [defaults setObject:sender.text forKey:[NSString stringWithFormat:@"key%ld",(long)6]];
            [defaults synchronize];
    }
    if(self.tableView.indexPathForSelectedRow.row == 7){
        [defaults setObject:sender.text forKey:[NSString stringWithFormat:@"key%ld",(long)7]];
            [defaults synchronize];
    }
    if(self.tableView.indexPathForSelectedRow.row == 8){
        [defaults setObject:sender.text forKey:[NSString stringWithFormat:@"key%ld",(long)8]];
            [defaults synchronize];
    }
    if(self.tableView.indexPathForSelectedRow.row == 9){
        [defaults setObject:sender.text forKey:[NSString stringWithFormat:@"key%ld",(long)9]];
            [defaults synchronize];
    }
    if(self.tableView.indexPathForSelectedRow.row == 10){
        [defaults setObject:sender.text forKey:[NSString stringWithFormat:@"key%ld",(long)10]];
            [defaults synchronize];
    }
    else{
    [defaults synchronize];
      
    }
  //  NSLog(@"ROW = %ld",[defaults integerForKey:[NSString stringWithFormat:@"%d",1]]);
}
*/

- (IBAction)itemRemoved:(UIButton *)sender {
    
}
@end
