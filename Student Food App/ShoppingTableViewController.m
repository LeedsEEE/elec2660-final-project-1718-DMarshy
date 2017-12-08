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
    self.item = [[ShoppingItemCell alloc] init];//initialises cell

    
  
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
        
        {if([inventorydefaults objectForKey:[NSString stringWithFormat:@"s%d",1]] == NULL){//Checks if first item is empty
            [inventorydefaults setObject:@"Enter Item" forKey:[NSString stringWithFormat:@"s%d",1]];//makes enter item cell
            [inventorydefaults synchronize];//saves first item
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
        
    InventoryTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"InventoryCell2" forIndexPath:indexPath];//add item cell
                     return cell;
    }
    else {
        ShoppingItemCell *cell = [tableView dequeueReusableCellWithIdentifier:@"ShoppingItemCell" forIndexPath:indexPath];
        
        int i;
        for (i=1; !([inventorydefaults objectForKey:[NSString stringWithFormat:@"s%d",i]] == nil); i++) {//loops through checking if object for key is empty
            
            cell.ItemName.text = [inventorydefaults objectForKey:[NSString stringWithFormat:@"s%ld",indexPath.row+1]];//sets data of cells
            cell.ItemName.tag = indexPath.row+1;
          
        }
        return cell;
}
}



- (IBAction)itemRemoved:(UIButton *)sender {
    NSUserDefaults *inventorydefaults =[NSUserDefaults standardUserDefaults];
    CGPoint buttonPosition = [sender convertPoint:CGPointZero toView:self.tableView];//gets what position the button is
    NSIndexPath *indexPath = [self.tableView indexPathForRowAtPoint:buttonPosition];//converts it to an index path
    
    if([[inventorydefaults objectForKey:[NSString stringWithFormat:@"s%d",1]] isEqualToString:@"Enter Item"]){
        [inventorydefaults setObject:@"Enter Item" forKey:[NSString stringWithFormat:@"s%d",1]];//adding empty item in cell 1 if first item removed
        NSLog(@"Cell 1 remade");
    }
    else {
        [inventorydefaults removeObjectForKey:[NSString stringWithFormat:@"s%ld",indexPath.row+1]];//removes object
        [inventorydefaults synchronize];//saves user defaults
        NSLog(@"item = %@",[inventorydefaults objectForKey:[NSString stringWithFormat:@"s%ld",indexPath.row+1]]);
        int i;
        
        for (i=(int)indexPath.row+1;[inventorydefaults objectForKey:[NSString stringWithFormat:@"s%d",i+1]] != NULL; i++) {//loops through checking if keys after removed item are empty
            [inventorydefaults setObject:[inventorydefaults objectForKey:[NSString stringWithFormat:@"s%d",i+1]] forKey:[NSString stringWithFormat:@"s%d",i]];//saves next item details to current
            [inventorydefaults removeObjectForKey:[NSString stringWithFormat:@"s%d",i+1]];//removes next cell
            [inventorydefaults synchronize];//saves
                        NSLog(@"for loop runs");
        }
        
        
    [self.tableView reloadData];//reloads data
        }

    }





@end
