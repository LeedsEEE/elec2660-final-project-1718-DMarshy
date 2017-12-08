//
//  RecipeDataModel.h
//  Student Food App
//
//  Created by Daniel Marshall [el16dm] on 20/11/2017.
//  Copyright © 2017 Daniel Marshall [el16dm]. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Recipe.h"
#import <CoreData/CoreData.h>

@interface RecipeDataModel : NSObject
@property (nonatomic, strong) NSMutableArray *cheapRecipes;//different arrays for different types of meal
@property (nonatomic, strong) NSMutableArray *meatRecipes;
@property (nonatomic, strong) NSMutableArray *PastaRecipes;
@property (nonatomic, strong) NSMutableArray *fishRecipes;
@property (nonatomic, strong) NSMutableArray *VegetarianRecipes;
@property (nonatomic, strong) NSMutableArray *sauces;
@property (nonatomic, strong) NSMutableArray *basics;

@end
