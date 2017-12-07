//
//  ShoppingItemCell.m
//  Student Food App
//
//  Created by Daniel Marshall [el16dm] on 05/12/2017.
//  Copyright © 2017 Daniel Marshall [el16dm]. All rights reserved.
//

#import "ShoppingItemCell.h"

@implementation ShoppingItemCell

- (void)awakeFromNib {
    [super awakeFromNib];
 
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}


- (IBAction)ItemBought:(UIButton *)sender {
    NSUserDefaults *inventorydefaults =[NSUserDefaults standardUserDefaults];
    if([[inventorydefaults objectForKey:[NSString stringWithFormat:@"s%d",1]] isEqualToString:@"Enter Item"]){
        [inventorydefaults setObject:@"Enter Item" forKey:[NSString stringWithFormat:@"s%d",1]];
    }
    else{
    [inventorydefaults removeObjectForKey:[NSString stringWithFormat:@"s%ld",self.ItemName.tag]];
    [inventorydefaults synchronize];
    NSLog(@"item = %@",[inventorydefaults objectForKey:[NSString stringWithFormat:@"s%ld",self.ItemName.tag]]);
        int i;
#warning        for (i=1;[inventorydefaults objectForKey:[NSString stringWithFormat:@"s%d",i]] != NULL; i++) {//move all items below removed item up one// try creating objects then comparing them
            [inventorydefaults setObject:[inventorydefaults objectForKey:[NSString stringWithFormat:@"s%d",i]] forKey:[NSString stringWithFormat:@"s%d",i-1]];
            
        }
        
}
}

@end
