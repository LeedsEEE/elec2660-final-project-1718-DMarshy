//
//  RecipeTableViewController.h
//  Student Food App
//
//  Created by Daniel Marshall [el16dm] on 20/11/2017.
//  Copyright © 2017 Daniel Marshall [el16dm]. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "RecipeDataModel.h"
#import "Recipe.h"
#import "RecipeViewController.h"

@interface RecipeTableViewController : UITableViewController <UITableViewDelegate, UITableViewDataSource>

@property (nonatomic, strong) RecipeDataModel *recipe;
@end
