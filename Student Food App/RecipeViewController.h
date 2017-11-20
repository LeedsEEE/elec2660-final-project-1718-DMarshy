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

@interface RecipeViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *recipeNameLabel;
@property (nonatomic, strong) Recipe *recipe;

@end
