//
//  OpAmpCalc.h
//  EngineeringToolkit
//
//  Created by Daniel Heney [cn14dh] on 06/12/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "NonInOpAmpViewController.h"

@interface OpAmpCalc : NSObject

@property (nonatomic) double nonInAv;
@property (nonatomic) double R1;
@property (nonatomic) double R2;

@property (nonatomic) double InAv;
@property (nonatomic) double Rf;
@property (nonatomic) double Ri;

-(double) nonInAv;
-(double) R1;
-(double) R2;

-(double) InAv;
-(double) Rf;
-(double) Ri;

/*
@property NSInteger *NonInAv;
@property NSInteger *R1;
@property NSInteger *R2;

@property NSInteger *InAv;
@property NSInteger *Rf;
@property NSInteger *Ri;
*/


@end
