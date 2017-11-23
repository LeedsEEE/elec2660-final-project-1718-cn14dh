//
//  FirstViewController.m
//  ResistorCalc
//
//  Created by Daniel Heney [cn14dh] on 16/10/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import "FourBandViewController.h"

@interface FourBandViewController ()

@end

@implementation FourBandViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.picker.delegate = self;
    self.picker.dataSource =self;
    
    self.resistor = [[Resistor alloc] init];        //setting the resistor to 1k and printing the value
   
    /*  self.resistor.firstSignificantFigure = 1;
     self.resistor.secondSignificantFigure = 0;
     self.resistor.multiplierIndex = 2;
     self.resistor.toleranceIndex = 4;
     NSLog(@"Resistor Value = %f",self.resistor.value);
     */
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark Picker View Delegate Methods

/* - (NSString *)pickerView:(UIPickerView *)pickerView
 titleForRow:(NSInteger)row
 forComponent:(NSInteger)component{
 
 NSString *coordinate = [NSString stringWithFormat:@"%ld,%ld", component, row];
 
 return coordinate;
 
 }*/

- (UIView *)pickerView:(UIPickerView *)pickerView
            viewForRow:(NSInteger)row
          forComponent:(NSInteger)component
           reusingView:(UIView *)view{
    
    UIView *band = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 50, 30)];
    
    if (component == 3){
        band.backgroundColor = [self.resistor.toleranceColorArray objectAtIndex:row];
    } else {
        band.backgroundColor = [self.resistor.bandColorArray objectAtIndex:row];
    }
    
    return band;
    
}

- (void)pickerView:(UIPickerView *)pickerView
      didSelectRow:(NSInteger)row
       inComponent:(NSInteger)component{
    
    self.resistor.firstSignificantFigure = [self.picker selectedRowInComponent:0];
    self.resistor.secondSignificantFigure = [self.picker selectedRowInComponent:1];
    self.resistor.multiplierIndex = [self.picker selectedRowInComponent:2];
    self.resistor.toleranceIndex = [self.picker selectedRowInComponent:3];
    
    //NSLog(@"Resistor Value = %f", self.resistor.value);
    
    self.resistorvalue.text = [NSString stringWithFormat:@"Resistor Value: %.2f Ω", self.resistor.value];
}

#pragma mark Picker View Data Source Methods

- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView{
    
    return 4;
    
}

- (NSInteger)pickerView:(UIPickerView *)pickerView
numberOfRowsInComponent:(NSInteger)component{
    
    NSInteger rows;
    
    if (component == 0) {           //first sig fig
        rows = 10;
    } else if (component == 1){     //second sig fig
        rows = 10;
    } else if (component == 2){     //multiplier
        rows = 12;
    } else if (component == 3){     //tolerance
        rows = [self.resistor.toleranceColorArray count]; //used count to set number
    }
    
    return rows;
    
}



@end
