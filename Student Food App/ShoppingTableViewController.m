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
   //self.addItem = [[AddShopTableViewCell alloc]init];


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
        if(indexPath.row == 1){
            self.item.ItemName.text = [defaults stringForKey:@"name1"];
            [defaults setInteger:indexPath.row forKey:[NSString stringWithFormat:@"%ld",indexPath.row]];
            [defaults synchronize];
        }
        if(indexPath.row == 2){
            self.item.ItemName.text = [defaults stringForKey:@"name2"];
                        [defaults setInteger:indexPath.row forKey:[NSString stringWithFormat:@"%ld",indexPath.row]];
              [defaults synchronize];
        }
        if(indexPath.row == 3){
            self.item.ItemName.text = [defaults objectForKey:@"name3"];
                        [defaults setInteger:indexPath.row forKey:[NSString stringWithFormat:@"%ld",indexPath.row]];
              [defaults synchronize];
        }
        if(indexPath.row == 4){
            self.item.ItemName.text = [defaults objectForKey:@"name4"];
                        [defaults setInteger:indexPath.row forKey:[NSString stringWithFormat:@"%ld",indexPath.row]];
              [defaults synchronize];
        }
        if(indexPath.row == 5){
            self.item.ItemName.text = [defaults objectForKey:@"name5"];
                        [defaults setInteger:indexPath.row forKey:[NSString stringWithFormat:@"%ld",indexPath.row]];
              [defaults synchronize];
        }
        if(indexPath.row == 6){
            self.item.ItemName.text = [defaults objectForKey:@"name6"];
                        [defaults setInteger:indexPath.row forKey:[NSString stringWithFormat:@"%ld",indexPath.row]];
        }
        if(indexPath.row == 7){
            self.item.ItemName.text = [defaults objectForKey:@"name7"];
                        [defaults setInteger:indexPath.row forKey:[NSString stringWithFormat:@"%ld",indexPath.row]];
        }
        if(indexPath.row == 8){
            self.item.ItemName.text = [defaults objectForKey:@"name8"];
                        [defaults setInteger:indexPath.row forKey:[NSString stringWithFormat:@"%ld",indexPath.row]];
        }
        if(indexPath.row == 9){
            self.item.ItemName.text = [defaults objectForKey:@"name9"];
                        [defaults setInteger:indexPath.row forKey:[NSString stringWithFormat:@"%ld",indexPath.row]];
        }
        if(indexPath.row == 10){
            self.item.ItemName.text = [defaults objectForKey:@"name10"];
                        [defaults setInteger:indexPath.row forKey:[NSString stringWithFormat:@"%ld",indexPath.row]];
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
  
   // [defaults setInteger:Row forKey:[NSString stringWithFormat:@"%ld",Row]];
    //[defaults setValue:sender.text forKey:[NSString stringWithFormat:@"%ld",Row]];
    
    if([defaults integerForKey:[NSString stringWithFormat:@"%d",1]] == 1){
        [defaults setObject:[NSString stringWithFormat:@"%@",sender.text] forKey:@"name1"];
            [defaults synchronize];
        NSLog(@"it's REALLY doing something");
        NSLog(@"NAME = %@",[defaults stringForKey:@"name1"]);
    }
    if([defaults integerForKey:[NSString stringWithFormat:@"%d",2]] == 2){
        NSLog(@"ROW = %ld",[defaults integerForKey:[NSString stringWithFormat:@"%d",1]]);
        [defaults setObject:sender.text forKey:@"name2"];
            [defaults synchronize];
    }
    if([defaults integerForKey:[NSString stringWithFormat:@"%d",3]] == 3){
        [defaults setObject:sender.text forKey:@"name3"];
            [defaults synchronize];
                NSLog(@"ROW = %ld",[defaults integerForKey:[NSString stringWithFormat:@"%d",1]]);
    }
    if([defaults integerForKey:[NSString stringWithFormat:@"%d",4]] == 4){
        [defaults setObject:sender.text forKey:@"name4"];
            [defaults synchronize];
                NSLog(@"row = %ld",[defaults integerForKey:[NSString stringWithFormat:@"%d",1]]);
    }
    if([defaults integerForKey:[NSString stringWithFormat:@"%d",5]] == 5){
        [defaults setObject:sender.text forKey:@"name5"];
            [defaults synchronize];
                NSLog(@"row = %ld",[defaults integerForKey:[NSString stringWithFormat:@"%d",1]]);
    }
    if(self.tableView.indexPathForSelectedRow.row == 6){
        [defaults setObject:sender.text forKey:@"name6"];
            [defaults synchronize];
    }
    if(self.tableView.indexPathForSelectedRow.row == 7){
        [defaults setObject:sender.text forKey:@"name7"];
            [defaults synchronize];
    }
    if(self.tableView.indexPathForSelectedRow.row == 8){
        [defaults setObject:sender.text forKey:@"name8"];
            [defaults synchronize];
    }
    if(self.tableView.indexPathForSelectedRow.row == 9){
        [defaults setObject:sender.text forKey:@"name9"];
            [defaults synchronize];
    }
    if(self.tableView.indexPathForSelectedRow.row == 10){
        [defaults setObject:sender.text forKey:@"name1"];
            [defaults synchronize];
    }
    else{
    [defaults synchronize];
           NSLog(@"it's doing something");
    }
  //  NSLog(@"ROW = %ld",[defaults integerForKey:[NSString stringWithFormat:@"%d",1]]);
}
@end
