//
//  Asset.h
//  Inventorius3
//
//  Created by Nicholas Vidovich on 11/27/12.
//  Copyright (c) 2012 unit91. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>


@interface Asset : NSManagedObject

@property (nonatomic, retain) NSString * strName;
@property (nonatomic, retain) NSString * strDescription;

@end
