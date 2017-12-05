//
//  InventoryViewController.h
//  Student Food App
//
//  Created by Daniel Marshall [el16dm] on 21/11/2017.
//  Copyright © 2017 Daniel Marshall [el16dm]. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "InventoryDataModel.h"
#import "Inventory.h"
#import <CoreData/CoreData.h> 
#import "InventoryItem+AddInventoryItem.h"

@interface InventoryViewController : UIViewController <UITextFieldDelegate>
- (IBAction)InventoryTextField:(UITextField *)sender;
@property (nonatomic, strong) InventoryDataModel *inventory;
@property (nonatomic, retain) NSManagedObjectContext *managedObjectContext;
- (IBAction)addToList:(UIButton *)sender;
@property (weak, nonatomic) IBOutlet UITextView *outputTextView;
@property (weak, nonatomic) IBOutlet UITextField *nameField;
@property (weak, nonatomic) IBOutlet UITextField *amountTextField;
@property (nonatomic, strong) NSFetchedResultsController *fetchedResultsController;
@property (nonatomic, strong) InventoryItem *inventoryItem;



@end
