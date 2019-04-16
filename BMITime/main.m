//

//  main.m
//  BMITime
//
//  Created by Сулейманов Алексей on 16/04/2019.
//  Copyright © 2019 alex. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
#import "Employee.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Person *person = [[Employee alloc] init];
        [person setWeigthInKilos:96];
        [person setHeightInMeters:1.8];
        float bmi = [person bodyMassIndex];
        NSLog(@"person (%d,%f) has a BMI of %f",[person weigthInKilos],[person heightInMeters],bmi);
    }
    return 0;
}
