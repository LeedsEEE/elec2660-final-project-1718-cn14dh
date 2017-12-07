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
    
    self.picker.delegate = self;        //setting up delegates and data sources for the picker
    self.picker.dataSource =self;
    
    self.resistor = [[FourBandResistor alloc] init];
   
    /*  self.resistor.firstSignificantFigure = 1;
     self.resistor.secondSignificantFigure = 0; //setting the resistor to 1k and printing the value for test
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

- (UIView *)pickerView:(UIPickerView *)pickerView
            viewForRow:(NSInteger)row
          forComponent:(NSInteger)component
           reusingView:(UIView *)view{
    
    UIView *band = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 50, 30)];
    
    if (component == 3){
        band.backgroundColor = [self.resistor.toleranceColorArray objectAtIndex:row]; //if 4th column in picker the options are the tolerance array
    } else {
        band.backgroundColor = [self.resistor.bandColorArray objectAtIndex:row];        //otherwise the colours are the colour band array
    }
    
    return band;
    
}

- (void)pickerView:(UIPickerView *)pickerView
      didSelectRow:(NSInteger)row
       inComponent:(NSInteger)component{
    
    self.resistor.firstSignificantFigure = [self.picker selectedRowInComponent:0];  //define first picker value as FirstSigFig
    self.resistor.secondSignificantFigure = [self.picker selectedRowInComponent:1]; //define second picker value as second sig fig
    self.resistor.multiplierIndex = [self.picker selectedRowInComponent:2];     //define 3rd picker value as multiplier index
    self.resistor.toleranceIndex = [self.picker selectedRowInComponent:3];      //define 4th picker value as tolerance index
    
    //NSLog(@"Resistor Value = %f", self.resistor.value);
    
    self.resistorvalue.text = [NSString stringWithFormat:@"Resistor Value: %.2f Ω", self.resistor.value];      //printing results in labels
    self.tolerancevalue.text = [NSString stringWithFormat:@"Tolerance: %.2f %%", self.resistor.tolerance];
}

#pragma mark - Picker View Data Source Methods

- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView{
    
    return 4;       //set number of components in picker
    
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

#pragma mark - Segue Between Resistors

- (IBAction)swapPage:(id)sender {
    UISegmentedControl *seg = sender;                   //https://stackoverflow.com/questions/8728968/how-do-i-segue-to-2-views-based-on-a-segmented-control-and-an-add-button
    if (seg.selectedSegmentIndex == 1)
        [self performSegueWithIdentifier:@"fourtofive" sender:self]; //if second segment is selected perform segue to that view
    else if (seg.selectedSegmentIndex == 2)
        [self performSegueWithIdentifier:@"fourtosix" sender:self];  //if third segment is selected perform segue to that view
}


@end
