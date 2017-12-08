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
        
        
        numberOfRows = i;
        
    }
        }
    }
        
}return numberOfRows;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    NSUserDefaults *inventorydefaults = [NSUserDefaults standardUserDefaults];
    if(indexPath.section == 0){
        
    InventoryTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"InventoryCell2" forIndexPath:indexPath];
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




- (IBAction)itemRemoved:(UIButton *)sender {
    NSUserDefaults *inventorydefaults =[NSUserDefaults standardUserDefaults];
    CGPoint buttonPosition = [sender convertPoint:CGPointZero toView:self.tableView];
    NSIndexPath *indexPath = [self.tableView indexPathForRowAtPoint:buttonPosition];
    
    if([[inventorydefaults objectForKey:[NSString stringWithFormat:@"s%d",1]] isEqualToString:@"Enter Item"]){
        [inventorydefaults setObject:@"Enter Item" forKey:[NSString stringWithFormat:@"s%d",1]];//adding empty item in cell 1 if first item removed
        NSLog(@"if statement");
    }
    else {
        [inventorydefaults removeObjectForKey:[NSString stringWithFormat:@"s%ld",indexPath.row+1]];
        [inventorydefaults synchronize];
        NSLog(@"item = %@",[inventorydefaults objectForKey:[NSString stringWithFormat:@"s%ld",indexPath.row+1]]);
        int i;
        
        for (i=(int)indexPath.row+1;[inventorydefaults objectForKey:[NSString stringWithFormat:@"s%d",i+1]] != NULL; i++) {
            [inventorydefaults setObject:[inventorydefaults objectForKey:[NSString stringWithFormat:@"s%d",i+1]] forKey:[NSString stringWithFormat:@"s%d",i]];
            [inventorydefaults removeObjectForKey:[NSString stringWithFormat:@"s%d",i+1]];
            [inventorydefaults synchronize];
                        NSLog(@"for loop runs");
        }
        
        
    [self.tableView reloadData];
        }

    }





@end
