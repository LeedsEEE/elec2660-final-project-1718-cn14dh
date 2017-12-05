//
//  SixBandResistor.h
//  EngineeringToolkit
//
//  Created by Daniel Heney [cn14dh] on 05/12/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface SixBandResistor : NSObject

@property (nonatomic) double value;
@property (nonatomic) double tolerance;
@property (nonatomic) double multiplier;
@property (nonatomic) double temp;

@property NSInteger numberOfBands;

@property NSInteger firstSignificantFigure;
@property NSInteger secondSignificantFigure;
@property NSInteger thirdSignificantFigure;

@property NSInteger multiplierIndex;
@property NSInteger toleranceIndex;
@property NSInteger tempIndex;

@property (nonatomic,strong) NSArray *bandColorArray;
@property (nonatomic,strong) NSArray *toleranceColorArray;
@property (nonatomic,strong) NSArray *tempArray;

-(double) value;
-(double) tolerance;
-(double) temp;

@end
