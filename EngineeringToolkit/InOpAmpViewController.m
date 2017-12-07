//
//  InOpAmpViewController.m
//  EngineeringToolkit
//
//  Created by Daniel Heney [cn14dh] on 05/12/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import "InOpAmpViewController.h"

@interface InOpAmpViewController ()

@end

@implementation InOpAmpViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Buttons Pressed

- (IBAction)findG:(id)sender {
    
    NSString *Ri = _RiInput.text;
    float RiValue = [Ri floatValue];
    NSString *Rf = _RfInput.text;
    float RfValue = [Rf floatValue];
    
    float Avresult;
    
    Avresult = -(RfValue/RiValue);
    
    //NSLog(@"Av Value = %f", Avresult);
    self.AvInput.text = [NSString stringWithFormat:@"%f", Avresult];
    
}

- (IBAction)findRi:(id)sender {
    
    NSString *Av = _AvInput.text;
    float AvValue = [Av floatValue];
    NSString *Rf = _RfInput.text;
    float RfValue = [Rf floatValue];
    
    float Riresult;
    
    Riresult = -(RfValue/AvValue);
    
    //NSLog(@"Ri Value = %f", Riresult);
    self.RiInput.text = [NSString stringWithFormat:@"%f", Riresult];
    
}

- (IBAction)findRf:(id)sender {
    
    NSString *Av = _AvInput.text;
    float AvValue = [Av floatValue];
    NSString *Ri = _RiInput.text;
    float RiValue = [Ri floatValue];
    
    float Rfresult;
    
    Rfresult = -(AvValue*RiValue);
    
    //NSLog(@"Rf Value = %f", Rfresult);
    self.RfInput.text = [NSString stringWithFormat:@"%f", Rfresult];
    
}

#pragma mark - segue Settings

- (IBAction)swapPage:(id)sender {
    UISegmentedControl *seg = sender;
    if (seg.selectedSegmentIndex == 0)
        [self performSegueWithIdentifier:@"in2non" sender:self];
}

#pragma mark - Keypad Settings

- (BOOL)textFieldShouldReturn:(UITextField *)textField{
    
    [textField resignFirstResponder]; //when return is pressed the keyboard is minimised
    
    return YES;
    
}

@end
