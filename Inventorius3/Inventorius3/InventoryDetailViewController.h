//
//  DetailViewController.h
//  Inventorius3
//
//  Created by Ken Harding on 11/27/12.
//  Copyright (c) 2012 unit91. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface InventoryDetailViewController : UICollectionViewController

@property (strong, nonatomic) id detailItem;

@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;
@property NSString* detailTextLabel;
@end
