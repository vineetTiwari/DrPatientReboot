//
//  Patient.h
//  DrPatientReboot
//
//  Created by Vineet Tiwari on 2015-05-19.
//  Copyright (c) 2015 vinny.co. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Doctor.h"

@interface Patient : NSObject

@property (nonatomic) NSString *name;
@property (nonatomic) NSNumber *age;
@property (nonatomic) BOOL healthCard;
@property (nonatomic) NSString *symptom;

- (instancetype)initWithName:(NSString *)name andAge:(NSNumber *)age;

- (void)whatIsYourName:(Doctor *)doctor;

- (void)whatIsYourSpecialization:(Doctor *)doctor;

- (void)visit:(Doctor *)doctor;

- (void)requestMedication:(Doctor *)doctor;

@end
