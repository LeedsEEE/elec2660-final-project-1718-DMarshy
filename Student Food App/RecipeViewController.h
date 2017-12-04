//
//  RecipeViewController.h
//  Student Food App
//
//  Created by Daniel Marshall [el16dm] on 20/11/2017.
//  Copyright © 2017 Daniel Marshall [el16dm]. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "RecipeDataModel.h"
#import "Recipe.h"
#import <CoreData/CoreData.h> // https://stackoverflow.com/questions/2032818/adding-core-data-to-existing-iphone-project

@interface RecipeViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *recipeNameLabel;
@property (nonatomic, strong) Recipe *recipe;
@property (nonatomic, retain) NSManagedObjectContext *managedObjectContext;
@property (weak, nonatomic) IBOutlet UITextView *ingredientsLabel;
@property (weak, nonatomic) IBOutlet UITextView *instructionsLabel;
@property (weak, nonatomic) IBOutlet UIImageView *recipeImageView;


@end
