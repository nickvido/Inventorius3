//
//  InventoryCreateViewController.m
//  Inventorius3
//
//  Created by Ken Harding on 11/27/12.
//  Copyright (c) 2012 unit91. All rights reserved.
//

#import "InventoryCreateViewController.h"

@interface InventoryCreateViewController ()

@end

@implementation InventoryCreateViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    
    self.title = @"Create Inventory";
    
    UIBarButtonItem *doneButton = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemDone target:self action:@selector(createInventory:)];
    self.navigationItem.rightBarButtonItem = doneButton;
}

- (void)createInventory:(id)sender
{
    [self performSegueWithIdentifier:@"SegueToInventoryDetail" sender:self];
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
