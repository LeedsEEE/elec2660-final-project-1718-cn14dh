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
        resistor.symbol = [UIImage imageNamed:@"resistorSymbol.png"];
        
        self.componantArray = [NSMutableArray array];
        CircuitComponent *capacitor = [[CircuitComponent alloc] init];
        capacitor.component = @"Capacitor";
        capacitor.units = @"farad, F";
        capacitor.symbol = [UIImage imageNamed:@"capacitorSymbol.png"];
        
        self.componantArray = [NSMutableArray array];
        CircuitComponent *inductor = [[CircuitComponent alloc] init];
        inductor.component = @"Inductor";
        inductor.units = @"henry, H";
        inductor.symbol =[UIImage imageNamed:@"inductorSymbol.png"];
        
        [self.componantArray addObject: resistor];  //index 0
        [self.componantArray addObject: capacitor]; //index 1
        [self.componantArray addObject: inductor];  //index 2
        
    }
    return self;
}

@end
