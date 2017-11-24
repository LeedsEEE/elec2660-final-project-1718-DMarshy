//
//  RecipeDataModel.m
//  Student Food App
//
//  Created by Daniel Marshall [el16dm] on 20/11/2017.
//  Copyright © 2017 Daniel Marshall [el16dm]. All rights reserved.
//

#import "RecipeDataModel.h"

@implementation RecipeDataModel

- (instancetype)init
{
    self = [super init];
    if (self) {
        
        self.cheapRecipes = [NSMutableArray array];
        
        Recipe *beansOnToast = [[Recipe alloc] init];
        beansOnToast.name = @"Beans On Toast";
        beansOnToast.ingredients = @"-1 Tin of Baked Beans \n-2 slices ofBread \n-Cheese (Optional)";
        beansOnToast.instructions = @"just do it";
        
        Recipe *mackerelOnToast= [[Recipe alloc] init];
        mackerelOnToast.name = @"Mackerel On Toast";
        mackerelOnToast.ingredients = @"-1 can of mackerel in tomato sauce \n-2 slices ofBread";
        mackerelOnToast.instructions = @"just do it";
        
        
        [self.cheapRecipes addObject:beansOnToast];//index 0
        [self.cheapRecipes addObject:mackerelOnToast]; //index 1
        
        self.meatRecipes = [NSMutableArray array];
        
        Recipe *steak = [[Recipe alloc] init];
        steak.name = @"Steak";
        steak.ingredients = @"-1 Steak \n-Creme Fraiche";
        steak.instructions = @"preheat the pan on a very high heat,\nprepare the steak with salt pepper and oil, \nplace steak in pan and leave it for 2 minutes the flip and leave for 2 minutes";
        [self.meatRecipes addObject:steak]; // index 0
        
        
    }
    return self;
}
@end
