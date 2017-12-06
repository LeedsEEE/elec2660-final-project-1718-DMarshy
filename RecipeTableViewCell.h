//
//  RecipeTableViewCell.h
//  Student Food App
//
//  Created by Daniel Marshall [el16dm] on 06/12/2017.
//  Copyright © 2017 Daniel Marshall [el16dm]. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "RecipeDataModel.h"
#import "Recipe.h"

@interface RecipeTableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *nameLabel;
@property (weak, nonatomic) IBOutlet UILabel *timeLabel;

@end
