//
//  Patient.m
//  DrPatientReboot
//
//  Created by Vineet Tiwari on 2015-05-19.
//  Copyright (c) 2015 vinny.co. All rights reserved.
//

#import "Patient.h"

@implementation Patient

- (instancetype)initWithName:(NSString *)name andAge:(NSNumber *)age {

  if (self = [super init]) {

    self.name = name;
    self.age = age;
  }

  return self;
}

- (void)whatIsYourName:(Doctor *)doctor {

  NSLog(@"I am %@\n", doctor.name);
}

- (void)whatIsYourSpecialization:(Doctor *)doctor {

  NSLog(@"I am a %@\n", doctor.specialization);
}

- (void)visit:(Doctor *)doctor {

  if (self.healthCard) {

    NSLog(@"Yes I have a valid Health Card");
  } else {

    NSLog(@"I don't have a valid Health Card but take me in anyways.");
  }

  [doctor acceptOrDeclinePatient:self];
}

- (void)requestMedication:(Doctor *)doctor {

  NSLog(@"%@, I am dying of %@ over here.\nCan you prescribe me something.", doctor.name, self.symptom);
  [doctor prescribeMedication:self];
}

@end



























