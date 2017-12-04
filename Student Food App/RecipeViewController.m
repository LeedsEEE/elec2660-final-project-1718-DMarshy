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
    [[UIDevice currentDevice] beginGeneratingDeviceOrientationNotifications];
    [[NSNotificationCenter defaultCenter]
     addObserver:self selector:@selector(orientationChanged:)
     name:UIDeviceOrientationDidChangeNotification
     object:[UIDevice currentDevice]];
    

    self.recipeNameLabel.text = self.recipe.name;
    self.managedObjectContext = self.managedObjectContext;
    self.ingredientsLabel.text = self.recipe.ingredients;
    self.instructionsLabel.text = self.recipe.instructions;
    self.recipeImageView.image = [UIImage imageNamed:self.recipe.photo];
    self.instructionsLabel.layer.borderColor = [UIColor blackColor].CGColor;
    self.ingredientsLabel.layer.borderColor = [UIColor blackColor].CGColor;
    self.instructionsLabel.layer.borderWidth = 1.0f;
    self.ingredientsLabel.layer.borderWidth = 1.0f;
    self.recipeNameLabel =[[UILabel alloc]initWithFrame:CGRectMake(126, 90, 102, 41)];
    self.recipeImageView = [[UIImageView alloc]initWithFrame:CGRectMake(67, 119, 240, 128)];
    self.ingredientsLabel = [[UITextView alloc]initWithFrame:CGRectMake(16, 276, 343, 145)];
    self.instructionsLabel = [[UITextView alloc]initWithFrame:CGRectMake(16, 451, 343, 145)];
    

            }

- (void) orientationChanged:(NSNotification *)note
{
    UIDevice * device = note.object;
    switch(device.orientation)
    {
        case UIDeviceOrientationPortrait:
         
            NSLog(@"Portrait");
            self.recipeNameLabel =[[UILabel alloc]initWithFrame:CGRectMake(126, 90, 102, 41)];
            self.recipeImageView = [[UIImageView alloc]initWithFrame:CGRectMake(67, 119, 240, 128)];
            self.ingredientsLabel = [[UITextView alloc]initWithFrame:CGRectMake(16, 276, 343, 145)];
            self.instructionsLabel = [[UITextView alloc]initWithFrame:CGRectMake(16, 451, 343, 145)];
            break;
            
        case UIDeviceOrientationLandscapeRight:
   
            NSLog(@"Landscape");
            self.recipeNameLabel =[[UILabel alloc]initWithFrame:CGRectMake(89, 80, 102, 21)];
            self.recipeImageView = [[UIImageView alloc]initWithFrame:CGRectMake(20, 123, 240, 128)];
            self.ingredientsLabel = [[UITextView alloc]initWithFrame:CGRectMake(275, 78, 372, 107)];
            self.instructionsLabel = [[UITextView alloc]initWithFrame:CGRectMake(275, 208, 372, 107)];
     
            break;
            
        case UIDeviceOrientationLandscapeLeft:
   
            NSLog(@"Landscape");
            self.recipeNameLabel =[[UILabel alloc]initWithFrame:CGRectMake(89, 80, 102, 21)];
            self.recipeImageView = [[UIImageView alloc]initWithFrame:CGRectMake(20, 123, 240, 128)];
            self.ingredientsLabel = [[UITextView alloc]initWithFrame:CGRectMake(275, 78, 372, 107)];
            self.instructionsLabel = [[UITextView alloc]initWithFrame:CGRectMake(275, 208, 372, 107)];
         
            break;
            
        default:
            break;
    };
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
