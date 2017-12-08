//
//  InventoryTableViewCell.m
//  Student Food App
//
//  Created by Daniel Marshall [el16dm] on 21/11/2017.
//  Copyright © 2017 Daniel Marshall [el16dm]. All rights reserved.
//

#import "InventoryTableViewCell.h"

@implementation InventoryTableViewCell



- (void)awakeFromNib {
    [super awakeFromNib];


    // Configure the view for the selected state
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];


}


- (IBAction)StepperPressed:(UIStepper *)sender {
  
    self.stepperCount.text = [NSString stringWithFormat:@"%d",(int)sender.value];//updates text to correspond to the value of the stepper
    
    NSUserDefaults *inventorydefaults = [NSUserDefaults standardUserDefaults];
    
    [inventorydefaults setInteger:sender.value forKey:[NSString stringWithFormat:@"a%d",(int)self.stepperValue.tag+1]];//saves value of stepper to user defaults so it is loaded up again when app is closed
    [inventorydefaults setObject:[NSString stringWithFormat:@"%d",(int)sender.value] forKey:[NSString stringWithFormat:@"c%d",(int)self.stepperCount.tag]];
    
    NSLog(@"value = %f for Row = %ld",sender.value,self.stepperValue.tag);
    
    [inventorydefaults synchronize];
}
@end
