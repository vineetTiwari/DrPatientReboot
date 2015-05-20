//
//  main.m
//  DrPatientReboot
//
//  Created by Vineet Tiwari on 2015-05-19.
//  Copyright (c) 2015 vinny.co. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Doctor.h"
#import "Patient.h"

int main(int argc, const char * argv[]) {
  @autoreleasepool {

    Doctor *DrHibbert = [[Doctor alloc] initWithName:@"Dr Hibbert" andSpecialization:@"Family Doctor"];

    Doctor *DrCrusher = [[Doctor alloc] initWithName:@"Dr Crusher" andSpecialization:@"Star Ship Doctor"];

    Patient *Picard = [[Patient alloc] initWithName:@"Jean-Luc" andAge:@56];
    Picard.healthCard = YES;
    Picard.symptom = @"hives";

    Patient *Homer = [[Patient alloc] initWithName:@"Homer" andAge:@40];
    Homer.healthCard = YES;
    Homer.symptom = @"headache";

    [DrHibbert whatIsYourName:Homer];
    [DrHibbert whatIsYourAge:Homer];
    [Homer whatIsYourName:DrHibbert];
    [Homer whatIsYourSpecialization:DrHibbert];
    [Homer visit:DrHibbert];
    [Homer requestMedication:DrHibbert];

    [Picard visit:DrCrusher];
    [Picard requestMedication:DrCrusher];
    
  }
    return 0;
}
