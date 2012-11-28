//
//  EditAssetViewController.h
//  Inventorius3
//
//  Created by Ken Harding on 11/27/12.
//  Copyright (c) 2012 unit91. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AssetEditViewController : UIViewController <UIImagePickerControllerDelegate>
@property (strong, nonatomic) IBOutlet UISwitch *m_assetSwitchButton;
@property (strong, nonatomic) IBOutlet UIButton *m_imageButton;
@property (nonatomic, retain) UIImageView * selectedImage;
@property (strong, nonatomic) UIImagePickerController *picker;
@end
