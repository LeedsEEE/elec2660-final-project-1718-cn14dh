//
//  Resistor.h
//  EngineeringToolkit
//
//  Created by Daniel Heney [cn14dh] on 23/11/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface FourBandResistor : NSObject

@property (nonatomic) double value;
@property (nonatomic) double tolerance;
@property (nonatomic) double multiplier;

@property NSInteger numberOfBands;

@property NSInteger firstSignificantFigure;
@property NSInteger secondSignificantFigure;

@property NSInteger multiplierIndex;
@property NSInteger toleranceIndex;

@property (nonatomic,strong) NSArray *bandColorArray;
@property (nonatomic,strong) NSArray *toleranceColorArray;
//@property (nonatomic,strong) NSArray *E24Array;

-(double) value;
-(double) tolerance;
-(double) E24;

@end
