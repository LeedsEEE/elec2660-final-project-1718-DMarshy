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
  //  self.addItem = [[AddShopTableViewCell alloc]init];
    

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
    if(indexPath.row == 0){
        
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"AddItemCell" forIndexPath:indexPath];
      NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
        NSInteger key = indexPath.row;
        [defaults setInteger:key forKey:[NSString stringWithFormat:@"%ld",key]];
        [defaults synchronize];
        return cell;
    }
    else{
            UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"ItemCell" forIndexPath:indexPath];
        NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
        if(indexPath.row == 1){
            self.item.ItemName.text = [defaults objectForKey:@"name1"];
            [defaults setValue:1  forKey:@"1"];
        }
        if(indexPath.row == 2){
            self.item.ItemName.text = [defaults objectForKey:@"name2"];
        }
        if(indexPath.row == 3){
            self.item.ItemName.text = [defaults objectForKey:@"name3"];
        }
        if(indexPath.row == 4){
            self.item.ItemName.text = [defaults objectForKey:@"name4"];
        }
        if(indexPath.row == 5){
            self.item.ItemName.text = [defaults objectForKey:@"name5"];
        }
        if(indexPath.row == 6){
            self.item.ItemName.text = [defaults objectForKey:@"name6"];
        }
        if(indexPath.row == 7){
            self.item.ItemName.text = [defaults objectForKey:@"name7"];
        }
        if(indexPath.row == 8){
            self.item.ItemName.text = [defaults objectForKey:@"name8"];
        }
        if(indexPath.row == 9){
            self.item.ItemName.text = [defaults objectForKey:@"name9"];
        }
        if(indexPath.row == 10){
            self.item.ItemName.text = [defaults objectForKey:@"name10"];
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

- (IBAction)ItemName:(UITextField *)sender {
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    NSInteger Row = [defaults integerForKey:[NSString stringWithFormat:@"%ld",self.tableView.indexPathForSelectedRow.row]];
    [defaults setInteger:Row forKey:[NSString stringWithFormat:@"%ld",Row]];
    [defaults setValue:sender.text forKey:[NSString stringWithFormat:@"%ld",Row]];
    if(self.tableView.indexPath.row == 1){
     [defaults setObject:sender.text forKey:@"name1"];
    }

    [defaults synchronize];
           NSLog(@"it's doing something");
}
@end
