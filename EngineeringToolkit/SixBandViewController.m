//
//  SixBandViewController.m
//  EngineeringToolkit
//
//  Created by Daniel Heney [cn14dh] on 23/11/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import "SixBandViewController.h"

@interface SixBandViewController ()

@end

@implementation SixBandViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)swapPage:(id)sender {
    UISegmentedControl *seg = sender;
    if (seg.selectedSegmentIndex == 0)
        [self performSegueWithIdentifier:@"sixtofour" sender:self];
    else if (seg.selectedSegmentIndex == 1)
        [self performSegueWithIdentifier:@"sixtofive" sender:self];
}
@end
