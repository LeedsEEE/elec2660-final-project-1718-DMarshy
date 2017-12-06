//
//  RecipeTableViewController.m
//  Student Food App
//
//  Created by Daniel Marshall [el16dm] on 20/11/2017.
//  Copyright © 2017 Daniel Marshall [el16dm]. All rights reserved.
//

#import "RecipeTableViewController.h"

@interface RecipeTableViewController ()

@end

@implementation RecipeTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.recipe = [[RecipeDataModel alloc] init];
  
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
   /* NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    [defaults setInteger:2 forKey:@"numberOfRows"];
    [defaults synchronize];*/
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {

    return 8;
}
- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    NSString *sectionName;
    switch (section)
    {
        case 1:
            sectionName = @"Cheap Meals";
            break;
            // ...
        case 2:
            sectionName = @"Meat Meals";
            break;
        case 3:
            sectionName = @"Pasta Meals";
            break;
        case 4:
            sectionName = @"Fish Meals";
            break;
        case 5:
            sectionName = @"Vegetarian Meals";
            break;
        case 6:
            sectionName = @"Sauces";
            break;
        case 7:
            sectionName = @"Basics";
            break;
    }
    return sectionName; //https://stackoverflow.com/questions/10505708/how-to-set-the-uitableview-section-title-programmatically-iphone-ipad
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    NSInteger numberOfRows;
    if(section == 0){
        numberOfRows=1;
    }
    else if (section == 1){
        numberOfRows = self.recipe.cheapRecipes.count;
    }
    else if (section == 2){
        numberOfRows = self.recipe.PastaRecipes.count;
    }
    else if (section == 3){
        numberOfRows = self.recipe.fishRecipes.count;
    }
    else if (section == 4){
        numberOfRows = self.recipe.meatRecipes.count;
    }
    else if (section == 5){
        numberOfRows = self.recipe.VegetarianRecipes.count;
    }
    else if (section == 6){
        numberOfRows = self.recipe.sauces.count;
    }
    else if (section == 7){
        numberOfRows = self.recipe.basics.count;
    }
    return numberOfRows;

}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
   
    if(indexPath.section == 0){
        UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"AddRecipeCell" forIndexPath:indexPath];
        cell.textLabel.text = @"Add Recipe";
        return cell;
    }
    else if (indexPath.section == 1){
        UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"RecipeCell" forIndexPath:indexPath];
        Recipe *tempRecipe = [self.recipe.cheapRecipes objectAtIndex:indexPath.row];
        cell.textLabel.text = tempRecipe.name;

        return cell;
    }
    else if (indexPath.section == 2){
        UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"RecipeCell" forIndexPath:indexPath];
        Recipe *tempRecipe = [self.recipe.PastaRecipes objectAtIndex:indexPath.row];
        cell.textLabel.text = tempRecipe.name;
   
        return cell;
    }
    else if (indexPath.section == 3){
        UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"RecipeCell" forIndexPath:indexPath];
        Recipe *tempRecipe = [self.recipe.fishRecipes objectAtIndex:indexPath.row];
        cell.textLabel.text = tempRecipe.name;

        return cell;
    }
    else if (indexPath.section == 4){
        UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"RecipeCell" forIndexPath:indexPath];
        Recipe *tempRecipe = [self.recipe.meatRecipes objectAtIndex:indexPath.row];
        cell.textLabel.text = tempRecipe.name;

        return cell;
    }
    else if (indexPath.section == 5){
        UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"RecipeCell" forIndexPath:indexPath];
        Recipe *tempRecipe = [self.recipe.VegetarianRecipes objectAtIndex:indexPath.row];
        cell.textLabel.text = tempRecipe.name;
        return cell;
    }
    else if(indexPath.section == 6){
        UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"RecipeCell" forIndexPath:indexPath];
        Recipe *tempRecipe = [self.recipe.sauces objectAtIndex:indexPath.row];
        cell.textLabel.text = tempRecipe.name;
        return cell;
    }
    else{
        UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"RecipeCell" forIndexPath:indexPath];
        Recipe *tempRecipe = [self.recipe.basics objectAtIndex:indexPath.row];
        cell.textLabel.text = tempRecipe.name;
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


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
    
    if ([[segue identifier] isEqualToString:@"ShowRecipe"]){
        RecipeViewController *destinationViewController = [segue destinationViewController];
    
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        
        if (indexPath.section == 1) { //cheap meals
            Recipe *tempRecipe = [self.recipe.cheapRecipes objectAtIndex:indexPath.row];
            destinationViewController.recipe = tempRecipe;
        }
        if (indexPath.section == 2) { //meat meals
            Recipe *tempRecipe = [self.recipe.PastaRecipes objectAtIndex:indexPath.row];
            destinationViewController.recipe = tempRecipe;
        }
        if (indexPath.section == 3) { //pasta meals
            Recipe *tempRecipe = [self.recipe.fishRecipes objectAtIndex:indexPath.row];
            destinationViewController.recipe = tempRecipe;
        }
        if (indexPath.section == 4) { //fish meals
            Recipe *tempRecipe = [self.recipe.meatRecipes objectAtIndex:indexPath.row];
            destinationViewController.recipe = tempRecipe;
        }
        if (indexPath.section == 5) { //veggie meals
            Recipe *tempRecipe = [self.recipe.VegetarianRecipes objectAtIndex:indexPath.row];
            destinationViewController.recipe = tempRecipe;
        }
        if (indexPath.section == 6) { //sauces
            Recipe *tempRecipe = [self.recipe.sauces objectAtIndex:indexPath.row];
            destinationViewController.recipe = tempRecipe;
        }
         if (indexPath.section == 7) { //basics
            Recipe *tempRecipe = [self.recipe.basics objectAtIndex:indexPath.row];
            destinationViewController.recipe = tempRecipe;
        }        
    }
}


@end
