//
//  SixBandViewController.h
//  EngineeringToolkit
//
//  Created by Daniel Heney [cn14dh] on 23/11/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SixBandResistor.h"

@interface SixBandViewController : UIViewController <UIPickerViewDataSource, UIPickerViewDelegate>

@property (strong, nonatomic) SixBandResistor *resistor;

@property (weak, nonatomic) IBOutlet UIPickerView *picker;
@property (weak, nonatomic) IBOutlet UILabel *resistorvalue;
@property (weak, nonatomic) IBOutlet UILabel *tolerancevalue;
@property (weak, nonatomic) IBOutlet UILabel *tempcoeffvalue;

- (IBAction)swapPage:(id)sender;

@end
