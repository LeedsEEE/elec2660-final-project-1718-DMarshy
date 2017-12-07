//
//  Inventory.h
//  Student Food App
//
//  Created by Daniel Marshall [el16dm] on 21/11/2017.
//  Copyright © 2017 Daniel Marshall [el16dm]. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Inventory : NSObject
@property (nonatomic, strong) NSString *itemName;
@property int itemCount;
@property NSInteger key;

@end
