//
//  InventoryItem+AddInventoryItem.m
//  Student Food App
//
//  Created by Daniel Marshall [el16dm] on 27/11/2017.
//  Copyright © 2017 Daniel Marshall [el16dm]. All rights reserved.
//

#import "InventoryItem+AddInventoryItem.h"
#import "AppDelegate.h"
@implementation InventoryItem (AddInventoryItem)
@dynamic inventoryTableView;
@dynamic inventory;
@dynamic count;


+ (InventoryItem *)addItemInfoFromDictionary:(NSDictionary *)ItemInfo{
    AppDelegate *appDelegate = (AppDelegate *)[[UIApplication sharedApplication] delegate];
    NSManagedObjectContext *context = [appDelegate managedObjectContext];
    
    InventoryItem *inventoryItemEntity = nil;
    
    inventoryItemEntity =[NSEntityDescription insertNewObjectForEntityForName:@"InventoryItem" inManagedObjectContext:context];
    
    inventoryItemEntity.name = [ItemInfo valueForKey:@"name"];
    inventoryItemEntity.amount = [ItemInfo valueForKey:@"amount"];
    
    InventoryItem *Cheese = [[InventoryItem alloc] init];
    [Cheese setValue:@"Cheese" forKey:@"name"];
    [Cheese setValue:@"7" forKey:@"amount"];
    
    //create a new object
    return inventoryItemEntity;
    
}
/*
 - (void)setupFetchedResultsController
{
    NSManagedObjectContext *moc = [(AppDelegate *)[[UIApplication sharedApplication] delegate] managedObjectContext];
    NSEntityDescription *entityDescription = [NSEntityDescription
                                              entityForName:@"InventoryItem" inManagedObjectContext:moc];
    
    NSFetchRequest *request = [[NSFetchRequest alloc] init];
    [request setEntity:entityDescription];
    
    NSError *error = nil;
    NSArray *array = [moc executeFetchRequest:request error:&error];
    if (array == nil)
    {
        // Deal with error...
    }
    else
    {
        // your data is in array
    }
}*/



- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    
    return 1;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
     self.inventory = [[InventoryDataModel alloc] init];
    NSInteger numberOfRows;
    
    if (section == 0){
        numberOfRows = self.inventory.inventoryArray.count;
    }
    else{
        numberOfRows = [[[self.inventoryTableView.additem fetchedResultsController] sections] count];
    }
    return numberOfRows;
}
    - (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
      self.inventory = [[InventoryDataModel alloc] init];
        
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
            NSLog(@"%@",tempItem.itemName);
            return cell;
        }
        else{
            InventoryTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"InventoryCell" forIndexPath:indexPath];
            
           NSManagedObject *object = [self.inventoryTableView.additem.fetchedResultsController objectAtIndexPath:indexPath];
            cell.invItemName.text = [object valueForKey:@"name"];
            cell.stepperCount.text = @"0";
            cell.stepperValue.value = 0;
            return cell;
        }
        
    }



@end
