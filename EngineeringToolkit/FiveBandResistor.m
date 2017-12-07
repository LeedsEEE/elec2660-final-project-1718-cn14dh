//
//  FiveBandResistor.m
//  EngineeringToolkit
//
//  Created by Daniel Heney [cn14dh] on 23/11/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import "FiveBandResistor.h"

@implementation FiveBandResistor

- (id)init          //based on Dr Craig Evans resistor class file from lab
{
    self = [super init];
    if (self) {
        
        #pragma mark - arrays
        
        self.numberOfBands = 4;  //set 4 band resistor by default;
        
        self.bandColorArray = [NSArray arrayWithObjects:
                               [UIColor blackColor],
                               [UIColor brownColor],
                               [UIColor redColor],
                               [UIColor orangeColor],
                               [UIColor yellowColor],
                               [UIColor greenColor],
                               [UIColor blueColor],
                               [UIColor magentaColor],
                               [UIColor grayColor],
                               [UIColor whiteColor],
                               [UIColor colorWithRed:0.99 green:0.76 blue:0.0 alpha:0.9], //gold
                               [UIColor colorWithRed:0.76 green:0.80 blue:0.80 alpha:0.9], //silver
                               nil];
        
        self.toleranceColorArray = [NSArray arrayWithObjects:
                                    [UIColor brownColor],
                                    [UIColor redColor],
                                    [UIColor yellowColor],
                                    [UIColor greenColor],
                                    [UIColor blueColor],
                                    [UIColor magentaColor],
                                    [UIColor grayColor],
                                    [UIColor colorWithRed:0.99 green:0.76 blue:0.0 alpha:0.9], //gold
                                    [UIColor colorWithRed:0.76 green:0.80 blue:0.80 alpha:0.9], //silver
                                    [UIColor clearColor],   //clear is no band
                                    nil];
        
    }
    return self;
}

#pragma mark - Setting Values

-(double) value {
    
    if (self.multiplierIndex == 10) {  //gold is 0.1%
        self.multiplier = pow(10.0,-1);
    }
    else if (self.multiplierIndex == 11) {  //silver is 0.01%
        self.multiplier = pow(10.0,-2);
    }
    else {
        self.multiplier = pow(10.0,self.multiplierIndex);
    }
    
    if (self.numberOfBands == 4) {
        self.value = (self.firstSignificantFigure*100 + self.secondSignificantFigure*10 + _thirdSignificantFigure) * self.multiplier;
    }
    
    return _value;
}

-(double) tolerance {
    
    if (self.toleranceIndex == 0) {  //brown
        self.tolerance = 1.0;
    }
    else if (self.toleranceIndex == 1) {  //red
        self.tolerance = 2.0;
    }
    else if (self.toleranceIndex == 2) {  //yellow
        self.tolerance = 5.0;
    }
    else if (self.toleranceIndex == 3) {  //green
        self.tolerance = 0.5;
    }
    else if (self.toleranceIndex == 4) {  //blue
        self.tolerance = 0.25;
    }
    else if (self.toleranceIndex == 5) {  //violet
        self.tolerance = 0.1;
    }
    else if (self.toleranceIndex == 6) {  //gray
        self.tolerance = 0.05;
    }
    else if (self.toleranceIndex == 7) {  //gold
        self.tolerance = 5.0;
    }
    else if (self.toleranceIndex == 8) {  //silver
        self.tolerance = 10.0;
    }
    else {
        self.tolerance = 20.0;  //clear band is 20%
    }
    return _tolerance;
}


@end
