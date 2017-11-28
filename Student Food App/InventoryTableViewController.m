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
    self.inventorydictionary = [[InventoryItem alloc] init];

    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {

    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    NSInteger numberOfRows;
    
    if (section == 0){
        numberOfRows = self.inventory.inventoryArray.count;
    }
    else{
        numberOfRows = self.inventorydictionary.count;
    }
       return numberOfRows;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {


    
    if (indexPath.row == 0) {
        UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"InventoryCell2" forIndexPath:indexPath];

        return cell;
    }
    else if(indexPath.row >0 & indexPath.row < self.inventory.inventoryArray.count){
        
        InventoryTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"InventoryCell" forIndexPath:indexPath];
        Inventory *tempItem = [self.inventory.inventoryArray objectAtIndex:indexPath.row];
        cell.invItemName.text = tempItem.itemName;
        
        cell.stepperCount.text = [NSString stringWithFormat:@"%d",tempItem.itemCount];
        cell.stepperValue.value = tempItem.itemCount;
                return cell;
    }
    else{
        InventoryTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"InventoryCell" forIndexPath:indexPath];
        

        
        NSMutableArray *DictionaryArray =[[NSMutableArray alloc] init];
        DictionaryArray = [self.inventorydictionary valueForKey:@"name"];
        Inventory *tempAddedItem = [DictionaryArray objectAtIndex:(indexPath.row-self.inventory.inventoryArray.count)];
        cell.invItemName.text = [tempAddedItem valueForKey:@"name"];
        NSLog(@"tempaddeditem = %@",tempAddedItem.itemName);
        cell.stepperCount.text = [NSString stringWithFormat:@"%d",tempAddedItem.itemCount];
        cell.stepperValue.value = tempAddedItem.itemCount;
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
