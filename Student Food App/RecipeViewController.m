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


- (void)viewDidLoad {
    [super viewDidLoad];

#pragma Recipe layout/Look
    self.ingredientsLabel.textContainerInset = UIEdgeInsetsMake(2, 3, 2, 2);//https://stackoverflow.com/questions/34015927/uitextview-last-line-is-not-shown
    self.ingredientsLabel.textContainer.lineFragmentPadding = 2;
    self.instructionsLabel.textContainerInset = UIEdgeInsetsMake(2, 3, 2, 2);
    self.instructionsLabel.textContainer.lineFragmentPadding = 2;//This sets the boundaries within the text views so text isn't too close to the edges

    self.recipeNameLabel.text = self.recipe.name;//setting the text for the labels
    self.ingredientsLabel.text = self.recipe.ingredients;
    self.instructionsLabel.text = self.recipe.instructions;
    self.recipeImageView.image = [UIImage imageNamed:self.recipe.photo];//loads image with the name saves as .image string
    self.servesLabel.text = self.recipe.serves;
    self.costLabel.text = self.recipe.cost;
    self.recipeImageView.layer.cornerRadius = 10;
    self.recipeImageView.clipsToBounds = YES;//https://stackoverflow.com/questions/7705879/ios-create-a-uiimage-or-uiimageview-with-rounded-corners
    [self.recipeImageView.layer setBorderColor: [[UIColor blackColor] CGColor]];
    [self.recipeImageView.layer setBorderWidth: 2.0];//https://stackoverflow.com/questions/1354811/how-can-i-take-an-uiimage-and-give-it-a-black-border
    [self.instructionsLabel.layer setBorderColor:[[UIColor blackColor] CGColor]];
    [self.ingredientsLabel.layer setBorderColor:[[UIColor blackColor] CGColor]];
    [self.instructionsLabel.layer setBorderWidth: 2.0];
    [self.ingredientsLabel.layer setBorderWidth: 2.0];
    self.ingredientsLabel.layer.cornerRadius = 5;
    self.ingredientsLabel.clipsToBounds = YES;
    self.instructionsLabel.layer.cornerRadius = 5;
    self.instructionsLabel.clipsToBounds = YES;//setting curved corners and borders for the image and text views
    


            }
- (void)viewDidLayoutSubviews {
    [self.instructionsLabel setContentOffset:CGPointZero animated:NO];//forces text views to load at the top of the text
    [self.ingredientsLabel setContentOffset:CGPointZero animated:NO];//https://stackoverflow.com/questions/26835944/uitextview-text-content-doesnt-start-from-the-top
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
