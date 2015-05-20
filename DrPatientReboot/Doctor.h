//
//  Doctor.h
//  DrPatientReboot
//
//  Created by Vineet Tiwari on 2015-05-19.
//  Copyright (c) 2015 vinny.co. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Patient;

@interface Doctor : NSObject {

@private NSMutableArray *prescriptionArray;

}

@property (nonatomic) NSString *name;
@property (nonatomic) NSString *specialization;

- (instancetype)initWithName:(NSString *)name andSpecialization:(NSString *)specialization;

- (void)whatIsYourName:(Patient *)patient;

- (void)whatIsYourAge:(Patient *)patient;

- (void)acceptOrDeclinePatient:(Patient *)patient;

- (void)prescribeMedication:(Patient *)patient;

@end
