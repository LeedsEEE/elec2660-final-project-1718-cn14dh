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

#pragma mark - Buttons Pressed

- (IBAction)findG:(id)sender {
    
    NSString *R1 = _R1Input.text;       //pulls string from text field
    float R1Value = [R1 floatValue];    //sets sting to ifloat value
    NSString *R2 = _R2Input.text;
    float R2Value = [R2 floatValue];
    
    float Avresult;
    
    Avresult = 1+R1Value/R2Value;       //uses float values to find result based on what button was pressed
    
    //NSLog(@"Av Value = %f", Avresult);
    self.AvInput.text = [NSString stringWithFormat:@"%f", Avresult];        //display the result in text field
    
}

- (IBAction)findR1:(id)sender {
    
    NSString *Av = _AvInput.text;
    float AvValue = [Av floatValue];
    NSString *R2 = _R2Input.text;
    float R2Value = [R2 floatValue];
    
    float R1result;
    
    R1result = (AvValue-1)*R2Value;
    
    //NSLog(@"R1 Value = %f", R1result);
    self.R1Input.text = [NSString stringWithFormat:@"%f", R1result];
    
}

- (IBAction)findR2:(id)sender {
    
    NSString *R1 = self.R1Input.text;
    float R1Value = [R1 floatValue];
    NSString *Av = _AvInput.text;
    float AvValue = [Av floatValue];
    
    float R2result;
    
    R2result = ((R1Value)/(AvValue-1));
    
    //NSLog(@"R2 Value = %f", R2result);
    self.R2Input.text = [NSString stringWithFormat:@"%f", R2result];
    
}

#pragma mark - segue Settings

- (IBAction)swapPage:(id)sender {
    UISegmentedControl *seg = sender;
    if (seg.selectedSegmentIndex == 1)
        [self performSegueWithIdentifier:@"non2in" sender:self];
}

#pragma mark - Keypad Settings

- (BOOL)textFieldShouldReturn:(UITextField *)textField{
    
    [textField resignFirstResponder];       //when return is pressed the keyboard is minimised
    
    return YES;
    
}

@end
