//
//  InventoryTableViewCell.m
//  Student Food App
//
//  Created by Daniel Marshall [el16dm] on 21/11/2017.
//  Copyright © 2017 Daniel Marshall [el16dm]. All rights reserved.
//

#import "InventoryTableViewCell.h"

@implementation InventoryTableViewCell

NSInteger Count;


- (void)awakeFromNib {
    [super awakeFromNib];
    

    // Configure the view for the selected state
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];


}

- (IBAction)StepperPressed:(UIStepper *)sender {
    

    
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"InventoryCell" forIndexPath:indexPath];
  
    Inventory *tempInventory = [self.invItem.inventoryArray objectAtIndex:indexPath.row];
    self.invItemName.text = tempInventory.itemName;
    
    return cell;
    
}
@end
