//
//  SettingsPageViewController.m
//  OSU GPA Calculator
//
//  Created by Finn Fuller on 8/9/14.
//  Copyright (c) 2014 Finnbar Productions. All rights reserved.
//

#import "SettingsPageViewController.h"
#import "BNRViewController.h"

@interface SettingsPageViewController ()

@end

@implementation SettingsPageViewController

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
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

// Go back to home page when back button clicked
- (IBAction)back:(id)sender{
    
    BNRViewController *viewController = [[BNRViewController alloc] initWithNibName:nil bundle:nil];
    [self presentViewController:viewController animated:YES completion:NULL];
    
}


@end
