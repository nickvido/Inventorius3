//
//  EditAssetViewController.m
//  Inventorius3
//
//  Created by Ken Harding on 11/27/12.
//  Copyright (c) 2012 unit91. All rights reserved.
//

#import "AssetEditViewController.h"

@interface AssetEditViewController ()

@end

@implementation AssetEditViewController

@synthesize m_assetSwitchButton = _m_assetSwitchButton;
@synthesize selectedImage;
@synthesize picker;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)assetButtonPressed:(id)sender {
    picker = [[UIImagePickerController alloc] init];
    
    picker.delegate = self;
    
    if ([UIImagePickerController isSourceTypeAvailable:UIImagePickerControllerSourceTypeCamera])
    //  if (false)
    {
        
        picker.sourceType = UIImagePickerControllerSourceTypeCamera;
        
    } else
        
    {
        
        picker.sourceType = UIImagePickerControllerSourceTypePhotoLibrary;
        
    }
    
    //m image button = picker thinger?
    
    [self presentViewController:picker animated:YES completion:^{}];
}

-  (void)imagePickerControllerDidCancel:(UIImagePickerController *) Picker {
    
    [[self parentViewController] dismissViewControllerAnimated:(YES) completion:^{}];

    
}

- (void)imagePickerController:(UIImagePickerController *) Picker

    didFinishPickingMediaWithInfo:(NSDictionary *)info {
    
    
    [[self parentViewController] dismissViewControllerAnimated:(YES) completion:^{}];
    Picker = nil;
    
    selectedImage = [info valueForKey:UIImagePickerControllerOriginalImage];

    [_m_imageButton setBackgroundImage:selectedImage forState:UIControlStateNormal];
    [_m_imageButton setBackgroundImage:selectedImage forState:UIControlStateHighlighted];
    [_m_imageButton setBackgroundImage:selectedImage forState:UIControlStateSelected];
    [_m_imageButton setImage:selectedImage forState:UIControlStateNormal];
    [_m_imageButton setImage:selectedImage forState:UIControlStateHighlighted];
    [_m_imageButton setImage:selectedImage forState:UIControlStateSelected];
    
    
    
    
    //[Picker release];
    
}

@end
