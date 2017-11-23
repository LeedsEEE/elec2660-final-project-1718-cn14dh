//
//  FirstViewController.h
//  EngineeringToolkit
//
//  Created by Daniel Heney [cn14dh] on 23/11/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Resistor.h"

@interface FourBandViewController : UIViewController <UIPickerViewDataSource, UIPickerViewDelegate>

@property (strong, nonatomic) Resistor *resistor;

@property (weak, nonatomic) IBOutlet UIPickerView *picker;
@property (weak, nonatomic) IBOutlet UITextField *resistorvalue;

@end

