//
//  Recipe.h
//  Student Food App
//
//  Created by Daniel Marshall [el16dm] on 20/11/2017.
//  Copyright © 2017 Daniel Marshall [el16dm]. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Recipe : NSObject

@property (nonatomic, strong) NSString *ingredients;//recipe item with these properties
@property (nonatomic, strong) NSString *instructions;
@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSString *cookingTime;
@property (nonatomic, strong) NSString *serves;
@property (nonatomic, strong) NSString *cost;
@property (nonatomic, strong) NSString *photo;//string to reference saved image name
@end
