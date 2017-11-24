//
//  RecipeViewController.m
//  Student Food App
//
//  Created by Daniel Marshall [el16dm] on 20/11/2017.
//  Copyright © 2017 Daniel Marshall [el16dm]. All rights reserved.
//

#import "RecipeViewController.h"

@interface RecipeViewController ()

@end

@implementation RecipeViewController
@synthesize managedObjectContext = _managedObjectContext;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.recipeNameLabel.text = self.recipe.name;
    self.managedObjectContext = self.managedObjectContext;
    self.ingredientsLabel.text = self.recipe.ingredients;
    self.instructionsLabel.text = self.recipe.instructions;
    self.instructionsLabel.layer.borderColor = [UIColor blackColor].CGColor;
    self.ingredientsLabel.layer.borderColor = [UIColor blackColor].CGColor;
    self.instructionsLabel.layer.borderWidth = 1.0f;
    self.ingredientsLabel.layer.borderWidth = 1.0f;
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

@end
