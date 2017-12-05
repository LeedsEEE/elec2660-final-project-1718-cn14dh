//
//  TableViewController.h
//  EngineeringToolkit
//
//  Created by Daniel Heney [cn14dh] on 23/11/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DataModel.h"

@interface TableViewController : UITableViewController

@property (nonatomic,strong) DataModel *data;

@end
