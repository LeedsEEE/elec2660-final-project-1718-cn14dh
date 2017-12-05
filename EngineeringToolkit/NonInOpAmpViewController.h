//
//  SecondViewController.h
//  EngineeringToolkit
//
//  Created by Daniel Heney [cn14dh] on 23/11/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface NonInOpAmpViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *AvInput;
@property (weak, nonatomic) IBOutlet UITextField *R1Input;
@property (weak, nonatomic) IBOutlet UITextField *R2Input;

- (IBAction)findG:(id)sender;
- (IBAction)findR1:(id)sender;
- (IBAction)findR2:(id)sender;

- (IBAction)swapPage:(id)sender;

@end

