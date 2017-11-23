//
//  FirstViewController.h
//  EngineeringToolkit
//
//  Created by Daniel Heney [cn14dh] on 23/11/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FourBandResistor.h"

@interface FourBandViewController : UIViewController <UIPickerViewDataSource, UIPickerViewDelegate>

@property (strong, nonatomic) FourBandResistor *resistor;

@property (weak, nonatomic) IBOutlet UIPickerView *picker;
@property (weak, nonatomic) IBOutlet UITextField *resistorvalue;

- (IBAction)swapPage:(id)sender;


@end

