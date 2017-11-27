//
//  CircuitComponent.h
//  EngineeringToolkit
//
//  Created by Daniel Heney [cn14dh] on 27/11/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface CircuitComponent : NSObject

@property (nonatomic, strong) NSString *component;
@property (nonatomic, strong) NSString *units;
@property (nonatomic, strong) UIImage *image;

@end
