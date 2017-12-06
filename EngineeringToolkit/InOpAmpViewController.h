//
//  InOpAmpViewController.h
//  EngineeringToolkit
//
//  Created by Daniel Heney [cn14dh] on 05/12/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface InOpAmpViewController : UIViewController <UITextFieldDelegate>

@property (weak, nonatomic) IBOutlet UITextField *AvInput;
@property (weak, nonatomic) IBOutlet UITextField *RiInput;
@property (weak, nonatomic) IBOutlet UITextField *RfInput;

- (IBAction)findG:(id)sender;
- (IBAction)findRi:(id)sender;
- (IBAction)findRf:(id)sender;

- (IBAction)swapPage:(id)sender;

@end
