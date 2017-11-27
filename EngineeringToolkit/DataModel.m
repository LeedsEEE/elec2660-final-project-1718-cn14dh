//
//  DataModel.m
//  EngineeringToolkit
//
//  Created by Daniel Heney [cn14dh] on 27/11/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import "DataModel.h"

@implementation DataModel

- (instancetype)init
{
    self = [super init];
    if (self) {
        
        self.componantArray = [NSMutableArray array];
        CircuitComponent *resistor = [[CircuitComponent alloc] init];
        resistor.component = @"Resistor";
        resistor.units = @"ohm, Ω";
        //resistor.image =;
        
        self.componantArray = [NSMutableArray array];
        CircuitComponent *capacitor = [[CircuitComponent alloc] init];
        capacitor.component = @"Capacitor";
        capacitor.units = @"farad, F";
      //  capacitor.image =;
        
        self.componantArray = [NSMutableArray array];
        CircuitComponent *inductor = [[CircuitComponent alloc] init];
        inductor.component = @"Inductor";
        inductor.units = @"henry, H";
       // inductor.image =;
        
        [self.componantArray addObject: resistor];
        [self.componantArray addObject: capacitor];
        [self.componantArray addObject: inductor];
        
    }
    return self;
}

@end
