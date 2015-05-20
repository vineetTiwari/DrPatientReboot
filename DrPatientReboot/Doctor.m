//
//  Doctor.m
//  DrPatientReboot
//
//  Created by Vineet Tiwari on 2015-05-19.
//  Copyright (c) 2015 vinny.co. All rights reserved.
//

#import "Doctor.h"
#import "Patient.h"

@implementation Doctor {

  NSMutableArray *acceptedPatients;
  NSDictionary *symptomMedication;
}

- (instancetype)initWithName:(NSString *)name andSpecialization:(NSString *)specialization {

  if (self = [super init]) {
    self.name = name;
    self.specialization = specialization;
    acceptedPatients = [[NSMutableArray alloc] init];
    symptomMedication = @{@"headache" : @"Tylenol",
                          @"backPain" : @"Tiger Balm",
                          @"hives"    : @"Claritin"
                          };
    prescriptionArray = [NSMutableArray array];
  }

  return self;
}

- (void)whatIsYourName:(Patient *)patient {

  NSLog(@"I am %@\n", patient.name);
}

- (void)whatIsYourAge:(Patient *)patient {

  NSLog(@"I am %@\n", patient.age);
}

- (void)acceptOrDeclinePatient:(Patient *)patient {

  if (patient.healthCard) {
    [acceptedPatients addObject:patient];
    NSLog(@"Welcome to our practice %@", patient.name);
  } else {

    NSLog(@"Sorry %@ but we cannot accept you without a valid health card", patient.name);
  }

}

- (void)prescribeMedication:(Patient *)patient {

  if ([acceptedPatients containsObject:patient] == YES ) {

    NSString *prescription = [symptomMedication objectForKey:patient.symptom];
    if (prescription != nil) {

      [prescriptionArray addObject:prescription];

      NSLog(@"%@", prescriptionArray);

      NSLog(@"I have just the medication for you.\nTake %@ twice a day for two weeks and you should be good as new.\n", prescription);

    } else if (prescription == nil) {

      NSLog(@"Sorry %@, but I don't have anything for you", patient.name);
    }

  } else {

    NSLog(@"%@! I though I already told you that we cannot accept you as a patient.\nNow stop bugging me.", patient.name);
  }

}

@end

















