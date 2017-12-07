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
        
#pragma mark - Component Details
        
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
        
        self.componantArray = [NSMutableArray array];
        CircuitComponent *voltmeter = [[CircuitComponent alloc] init];
        voltmeter.component = @"Voltmeter";
        voltmeter.units = @"Volts, V";
        voltmeter.symbol = [UIImage imageNamed:@"voltmeterSymbol.png"];
        
        self.componantArray = [NSMutableArray array];
        CircuitComponent *ampmeter = [[CircuitComponent alloc] init];
        ampmeter.component = @"Ampmeter";
        ampmeter.units = @"Amps, A";
        ampmeter.symbol = [UIImage imageNamed:@"ampmeterSymbol.png"];
        
        self.componantArray = [NSMutableArray array];
        CircuitComponent *diode = [[CircuitComponent alloc] init];
        diode.component = @"Diode";
        diode.symbol = [UIImage imageNamed:@"diodeSymbol2.png"];
        
        self.componantArray = [NSMutableArray array];
        CircuitComponent *switchC = [[CircuitComponent alloc] init];
        switchC.component = @"Switch";
        switchC.symbol = [UIImage imageNamed:@"switchSymbol.png"];
        
#pragma mark - Store In Array
        
        [self.componantArray addObject: resistor];  //index 0
        [self.componantArray addObject: capacitor]; //index 1
        [self.componantArray addObject: inductor];  //index 2
        [self.componantArray addObject: voltmeter];  //index 3
        [self.componantArray addObject: ampmeter];  //index 4
        [self.componantArray addObject: diode];  //index 5
        [self.componantArray addObject: switchC];  //index 6
        
    }
    return self;
}

@end
