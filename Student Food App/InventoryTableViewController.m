//
//  InventoryTableViewController.m
//  Student Food App
//
//  Created by Daniel Marshall [el16dm] on 20/11/2017.
//  Copyright © 2017 Daniel Marshall [el16dm]. All rights reserved.
//

#import "InventoryTableViewController.h"

@interface InventoryTableViewController ()

@end

@implementation InventoryTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    

   self.inventory = [[InventoryDataModel alloc] init];
    
    
    NSUserDefaults *inventorydefaults = [NSUserDefaults standardUserDefaults];
    [inventorydefaults setObject:@"Cheese" forKey:[NSString stringWithFormat:@"k%d",1]];
    [inventorydefaults setObject:@"poop" forKey:[NSString stringWithFormat:@"k%d",2]]; //setting first objects value
        [inventorydefaults synchronize];

    
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

    
    NSInteger numberOfRows = 0;
    if(section == 0){
    
        numberOfRows = self.inventory.inventoryArray.count;
        
    }
    else if(section == 1){
        NSUserDefaults *inventorydefaults = [NSUserDefaults standardUserDefaults];
        int i;
     
        for (i = 1; [inventorydefaults objectForKey:[NSString stringWithFormat:@"k%d",i]] != NULL; i++) {//checking how many objects have values
            NSLog(@"Array value = %@",[inventorydefaults objectForKey:[NSString stringWithFormat:@"k%d",i]]);
            
                numberOfRows = i;
    
            }
     
    }
    NSLog(@"number of rows = %ld",numberOfRows);
                       return numberOfRows;

}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    
    if (indexPath.section == 0) {
        if(indexPath.row == 0) {
        UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"InventoryCell2" forIndexPath:indexPath];

            return cell;
        }
        else {
            
            InventoryTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"InventoryCell" forIndexPath:indexPath];
            
            Inventory *tempItem = [self.inventory.inventoryArray objectAtIndex:indexPath.row];
            cell.invItemName.text = tempItem.itemName;
            cell.stepperValue.value = tempItem.itemCount;
            cell.stepperCount.text = [NSString stringWithFormat:@"%d",tempItem.itemCount];
            return cell;
        }
        
    }
    
    else {
        InventoryTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"InventoryCell" forIndexPath:indexPath];

                int i;
        NSUserDefaults *inventorydefaults = [NSUserDefaults standardUserDefaults];
        for (i=1; !([inventorydefaults objectForKey:[NSString stringWithFormat:@"k%d",i]] == nil); i++) {
            cell.invItemName.text = [inventorydefaults objectForKey:[NSString stringWithFormat:@"k%ld",indexPath.row+1]];
            cell.stepperCount.text = [NSString stringWithFormat:@"%d",i];
            cell.stepperValue.value = [inventorydefaults integerForKey:[NSString stringWithFormat:@"a%d",i]];
            
        }
        [inventorydefaults synchronize];
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


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
    


    }


@end
