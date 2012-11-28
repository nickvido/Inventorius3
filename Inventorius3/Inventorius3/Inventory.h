//
//  Inventory.h
//  Inventorius3
//
//  Created by Nicholas Vidovich on 11/27/12.
//  Copyright (c) 2012 unit91. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

#import "Asset.h"

@class Asset, Owner;

@interface Inventory : Asset

@property (nonatomic, retain) NSSet *assets;
@property (nonatomic, retain) Owner *owner;
@end

@interface Inventory (CoreDataGeneratedAccessors)

- (void)addAssetsObject:(Asset *)value;
- (void)removeAssetsObject:(Asset *)value;
- (void)addAssets:(NSSet *)values;
- (void)removeAssets:(NSSet *)values;

@end
