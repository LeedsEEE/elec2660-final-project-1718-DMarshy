//
//  InventoryViewController.m
//  Student Food App
//
//  Created by Daniel Marshall [el16dm] on 21/11/2017.
//  Copyright © 2017 Daniel Marshall [el16dm]. All rights reserved.
//

#import "InventoryViewController.h"

@interface InventoryViewController ()

@end

@implementation InventoryViewController;


- (void)viewDidLoad {
    [super viewDidLoad];
        self.inventory.inventoryArray = [NSMutableArray alloc];
        self.managedObjectContext = self.managedObjectContext;
      // [self initializeFetchedResultsController];
    AppDelegate *appDelegate = (AppDelegate *)[[UIApplication sharedApplication] delegate];
    NSManagedObjectContext *context = appDelegate.managedObjectContext;
    
}
/*
- (void)initializeFetchedResultsController{
    NSFetchRequest *request = [NSFetchRequest fetchRequestWithEntityName:@"InventoryItem"];
    
    NSSortDescriptor *nameSort = [NSSortDescriptor sortDescriptorWithKey:@"name" ascending:YES];
    
    [request setSortDescriptors:@[nameSort]];
    
    NSManagedObjectContext *moc = self.managedObjectContext; //Retrieve the main queue NSManagedObjectContext
    
    [self setFetchedResultsController:[[NSFetchedResultsController alloc] initWithFetchRequest:request managedObjectContext:moc sectionNameKeyPath:nil cacheName:nil]];
    [[self fetchedResultsController] setDelegate:self];
    
    NSError *error = nil;
    if (![[self fetchedResultsController] performFetch:&error]) {
        NSLog(@"Failed to initialize FetchedResultsController: %@\n%@", [error localizedDescription], [error userInfo]);
        abort();
    }
}//https://developer.apple.com/library/content/documentation/Cocoa/Conceptual/CoreData/nsfetchedresultscontroller.html
*/


- (IBAction)addToList:(UIButton *)sender{
    

    NSDictionary *ItemInfo = @{@"name":self.nameField.text,@"amount":self.amountTextField.text};
    self.outputTextView.text = [NSString stringWithFormat:@"description = %@\n array = %@\n",[InventoryItem addItemInfoFromDictionary:ItemInfo].description,
    [self.fetchedResultsController fetchedObjects]];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/




- (IBAction)InventoryTextField:(UITextField *)sender {
 
     Inventory *tempItemName = [[Inventory alloc] init];
     tempItemName.itemName = sender.text;
     tempItemName.itemCount = 0;
     [self.inventory.inventoryArray addObject: tempItemName];
    NSLog(@"item = %@",tempItemName.itemName);

}



@end
