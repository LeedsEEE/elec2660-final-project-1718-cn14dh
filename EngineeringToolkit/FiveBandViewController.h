//
//  FiveBandViewController.h
//  EngineeringToolkit
//
//  Created by Daniel Heney [cn14dh] on 23/11/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FiveBandResistor.h"

@interface FiveBandViewController : UIViewController <UIPickerViewDataSource, UIPickerViewDelegate>

@property (strong, nonatomic) FiveBandResistor *resistor;

@property (weak, nonatomic) IBOutlet UILabel *resistorvalue;
@property (weak, nonatomic) IBOutlet UIPickerView *picker;
@property (weak, nonatomic) IBOutlet UILabel *tolerancevalue;

- (IBAction)swapPage:(id)sender;

@end
