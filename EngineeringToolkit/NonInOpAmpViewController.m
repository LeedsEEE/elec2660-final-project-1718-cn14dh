//
//  SecondViewController.m
//  EngineeringToolkit
//
//  Created by Daniel Heney [cn14dh] on 23/11/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import "NonInOpAmpViewController.h"

@interface NonInOpAmpViewController ()

@end

@implementation NonInOpAmpViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)swapPage:(id)sender {
    UISegmentedControl *seg = sender;
    if (seg.selectedSegmentIndex == 1)
        [self performSegueWithIdentifier:@"non2in" sender:self];
}

@end
