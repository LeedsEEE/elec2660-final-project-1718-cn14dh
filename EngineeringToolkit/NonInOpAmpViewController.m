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



- (IBAction)findG:(id)sender {
    
    NSString *R1 = _R1Input.text;
    float R1Value = [R1 floatValue];
    NSString *R2 = _R2Input.text;
    float R2Value = [R2 floatValue];
    
    float Avresult;
    
    Avresult = 1+R1Value/R2Value;
    
    self.AvInput.text = [NSString stringWithFormat:@"%f", Avresult];
    
}

- (IBAction)findR1:(id)sender {
    
    NSString *Av = _AvInput.text;
    float AvValue = [Av floatValue];
    NSString *R2 = _R2Input.text;
    float R2Value = [R2 floatValue];
    
    float R1result;
    
    R1result = (AvValue-1)*R2Value;
    
    self.R1Input.text = [NSString stringWithFormat:@"%f", R1result];
    
}

- (IBAction)findR2:(id)sender {
    
    NSString *R1 = self.R1Input.text;
    float R1Value = [R1 floatValue];
    NSString *Av = _AvInput.text;
    float AvValue = [Av floatValue];
    
    float R2result;
    
    R2result = ((R1Value)/(AvValue-1));
    
    self.R2Input.text = [NSString stringWithFormat:@"%f", R2result];
    
}

- (IBAction)swapPage:(id)sender {
    UISegmentedControl *seg = sender;
    if (seg.selectedSegmentIndex == 1)
        [self performSegueWithIdentifier:@"non2in" sender:self];
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField{
    
    [textField resignFirstResponder];
    
    return YES;
    
}

@end
