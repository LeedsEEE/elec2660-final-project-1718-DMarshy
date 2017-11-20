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
        beansOnToast.ingredients = @"1 Tin of Baked Beans /n 2 slices ofBread /n Cheese (Optional)";
        beansOnToast.instructions = @"just kill yourself";
        
        Recipe *mackerelOnToast= [[Recipe alloc] init];
        mackerelOnToast.name = @"Mackerel On Toast";
        mackerelOnToast.ingredients = @"1 can of mackerel in tomato sauce /n 2 slices ofBread";
        mackerelOnToast.instructions = @"just kill yourself";
        
        
        [self.cheapRecipes addObject:beansOnToast];//index 0
        [self.cheapRecipes addObject:mackerelOnToast]; //index 1
        
        
    }
    return self;
}
@end
