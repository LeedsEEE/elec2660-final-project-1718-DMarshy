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
   /* NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];//https://stackoverflow.com/questions/12853283/execute-function-only-at-first-run-ios
    
    if ( ![userDefaults valueForKey:@"version"] )
    {
          self.addItem = [[AddShopTableViewCell alloc]init]; // CALL your Function;
        
        // Adding version number to NSUserDefaults for first version:
        [userDefaults setFloat:[[[[NSBundle mainBundle] infoDictionary] objectForKey:@"CFBundleVersion"] floatValue] forKey:@"version"];
    }
    
    
    if ([[NSUserDefaults standardUserDefaults] floatForKey:@"version"] == [[[[NSBundle mainBundle] infoDictionary] objectForKey:@"CFBundleVersion"] floatValue] )
    {
        /// Same Version so dont run the function
    }
    else
    {
        // Call Your Function;
        self.addItem = [[AddShopTableViewCell alloc]init];
        // Update version number to NSUserDefaults for other versions:
        [userDefaults setFloat:[[[[NSBundle mainBundle] infoDictionary] objectForKey:@"CFBundleVersion"] floatValue] forKey:@"version"];
    }*/
     NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    NSLog(@"SAVED VALUE = %@",[defaults stringForKey:[NSString stringWithFormat:@"key%ld",(long)1]]);

}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source
- (instancetype)init
{
    self = [super init];
    if (self) {
            [self.tableView reloadData];
    }
    return self;
}
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {

    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    NSInteger numberOfRows;
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
          NSLog(@"ROWS = %ld",[defaults integerForKey:@"numberOfRows"]);
    numberOfRows = [defaults integerForKey:@"numberOfRows"];
    return numberOfRows;

}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    if(indexPath.row == 0){
        
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"AddItemCell" forIndexPath:indexPath];
             NSInteger key = indexPath.row;
        [defaults setInteger:key forKey:[NSString stringWithFormat:@"%ld",key]];
        [defaults synchronize];
        return cell;
    }
    else{
            UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"ItemCell" forIndexPath:indexPath];
        NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
        
 /*       NSString *tempItem = self.shoppingItem.shoppingArray[indexPath.row];
        self.item.ItemName.text = [defaults objectForKey:tempItem];
        */
        if(indexPath.row == 1){
                    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
            self.sharedName = @"i can add data to a cell";
            self.item = [[ShoppingItemCell alloc] init];
            [defaults setInteger:indexPath.row forKey:@"row1"];
            [defaults synchronize];
            NSLog(@"OPENING row 1");
        }
        if(indexPath.row == 2){
                    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
            self.item.ItemName.text = [defaults stringForKey:[NSString stringWithFormat:@"key%ld",(long)2]];
            [defaults setInteger:indexPath.row forKey:@"row2"];
            [defaults synchronize];
        }
        if(indexPath.row == 3){
                    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
            self.item.ItemName.text = [defaults stringForKey:[NSString stringWithFormat:@"key%ld",(long)3]];
            [defaults setInteger:indexPath.row forKey:@"row3"];
            [defaults synchronize];
        }
        if(indexPath.row == 4){
            self.item.ItemName.text = [defaults objectForKey:[NSString stringWithFormat:@"key%ld",(long)4]];
            [defaults setInteger:indexPath.row forKey:@"row4"];
            [defaults synchronize];
        }
        if(indexPath.row == 5){
            self.item.ItemName.text = [defaults objectForKey:[NSString stringWithFormat:@"key%ld",(long)5]];
            [defaults setInteger:indexPath.row forKey:@"row5"];
            [defaults synchronize];
        }
        if(indexPath.row == 6){
            self.item.ItemName.text = [defaults objectForKey:[NSString stringWithFormat:@"key%ld",(long)6]];
            [defaults setInteger:indexPath.row forKey:@"row6"];
            [defaults synchronize];
        }
        if(indexPath.row == 7){
            self.item.ItemName.text = [defaults objectForKey:[NSString stringWithFormat:@"key%ld",(long)7]];
            [defaults setInteger:indexPath.row forKey:@"row7"];
            [defaults synchronize];
        }
        if(indexPath.row == 8){
            self.item.ItemName.text = [defaults objectForKey:[NSString stringWithFormat:@"key%ld",(long)8]];
            [defaults setInteger:indexPath.row forKey:@"row8"];
            [defaults synchronize];
        }
        if(indexPath.row == 9){
            self.item.ItemName.text = [defaults objectForKey:[NSString stringWithFormat:@"key%ld",(long)9]];
            [defaults setInteger:indexPath.row forKey:@"row9"];
            [defaults synchronize];
        }
        if(indexPath.row == 10){
            self.item.ItemName.text = [defaults objectForKey:[NSString stringWithFormat:@"key%ld",(long)10]];
            [defaults setInteger:indexPath.row forKey:@"row10"];
            [defaults synchronize];
        }
        else{
            self.item.ItemName.text = [defaults objectForKey:@"random"];
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
- (IBAction)AddItemCell:(UIButton *)sender{

    self.addItem.numberOfCells ++;
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    NSInteger newNumberOfRows = [defaults integerForKey:@"numberOfRows"]+1;
    [defaults setInteger:newNumberOfRows forKey:@"numberOfRows"];
    [defaults removeObjectForKey:[NSString stringWithFormat:@"%ld",self.tableView.indexPathForSelectedRow.row]];
    [defaults synchronize];
    NSLog(@"number of rows = %ld",[defaults integerForKey:@"numberOfRows"]);
    [self.tableView reloadData];
}


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
        self.addItem.numberOfCells = self.addItem.numberOfCells-1;
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
}

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


@end
