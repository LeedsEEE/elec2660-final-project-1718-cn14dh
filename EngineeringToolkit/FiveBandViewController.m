//
//  FiveBandViewController.m
//  EngineeringToolkit
//
//  Created by Daniel Heney [cn14dh] on 23/11/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import "FiveBandViewController.h"

@interface FiveBandViewController ()

@end

@implementation FiveBandViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.picker.delegate = self;
    self.picker.dataSource =self;
    
    self.resistor = [[FiveBandResistor alloc] init];        //setting the resistor to 1k and printing the value
    
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

#pragma mark - Picker View Delegate Methods

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
    
    if (component == 4){
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
    self.resistor.thirdSignificantFigure = [self.picker selectedRowInComponent:2];      //now define 3rd picker value as third sig fig
    self.resistor.multiplierIndex = [self.picker selectedRowInComponent:3];
    self.resistor.toleranceIndex = [self.picker selectedRowInComponent:4];
    
    //NSLog(@"Resistor Value = %f", self.resistor.value);
    
    self.resistorvalue.text = [NSString stringWithFormat:@"Resistor Value: %.2f Ω", self.resistor.value];
    self.tolerancevalue.text = [NSString stringWithFormat:@"Tolerance: %.2f %%", self.resistor.tolerance];
}

#pragma mark - Picker View Data Source Methods

- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView{
    
    return 5;
    
}

- (NSInteger)pickerView:(UIPickerView *)pickerView
numberOfRowsInComponent:(NSInteger)component{
    
    NSInteger rows;
    
    if (component == 0) {           //first sig fig
        rows = 10;
    } else if (component == 1){     //second sig fig
        rows = 10;
    } else if (component == 2){     //third sig fig
        rows = 10;
    } else if (component == 3){     //multiplier
        rows = 12;
    } else if (component == 4){     //tolerance
        rows = [self.resistor.toleranceColorArray count]; //used count to set number
    }
    
    return rows;
    
}

#pragma mark - Segue Between Resistors

- (IBAction)swapPage:(id)sender {
    UISegmentedControl *seg = sender;
    if (seg.selectedSegmentIndex == 0)              //https://stackoverflow.com/questions/8728968/how-do-i-segue-to-2-views-based-on-a-segmented-control-and-an-add-button
        [self performSegueWithIdentifier:@"fivetofour" sender:self];
    else if (seg.selectedSegmentIndex == 2)
        [self performSegueWithIdentifier:@"fivetosix" sender:self];
}
@end
