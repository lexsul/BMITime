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
#import "Asset.h"

int main(int argc, const char * argv[]) {
  @autoreleasepool {
    /* Employee *person = [[Employee alloc] init];
   [person setWeigthInKilos:96];
        [person setHeightInMeters:1.8];
        [person setEmployeeID:15];
        
        float bmi = [person bodyMassIndex];
        NSLog(@"Emloyee %d has a BMI of %f",[person employeeID],bmi);
 */
    NSMutableArray *employees = [[NSMutableArray alloc] init];
    NSMutableDictionary *executives = [[NSMutableDictionary alloc] init];
    
    
    for (int i = 0; i < 10; i++) {
      Employee *person = [[Employee alloc] init];
      [person setWeigthInKilos:90 + i];
      [person setHeightInMeters:1.8 - i/10.0];
      [person setEmployeeID:i];
      
      [employees addObject:person];
      if (i==0) {
        [executives setObject:person forKey:@"CEO"];
      }
      if (i==1) {
        [executives setObject:person forKey:@"CTO"];
      }
        
    }
    NSSortDescriptor *voa = [NSSortDescriptor sortDescriptorWithKey:@"valueOfAssets" ascending:YES];
    NSSortDescriptor *ei = [NSSortDescriptor sortDescriptorWithKey:@"employeeID" ascending:YES];
    
    
    NSMutableArray *allAssets = [[NSMutableArray alloc] init];
    
    
    for (int i = 0; i < 10; i++){
      Asset *asset = [[Asset alloc] init];
      NSString *currentLabel = [NSString stringWithFormat:@"Laptop %d",i];
      [asset setLabel:currentLabel];
      [asset setResaleValue:i * 17];
      NSUInteger randomIndex = random() % [employees count];
      Employee *randomEmloyee = [employees objectAtIndex:randomIndex];
      [randomEmloyee addAssetsObject:asset];
      [allAssets addObject:asset];
    }
    [employees sortUsingDescriptors:[NSArray arrayWithObjects:voa,ei,nil]];
    NSLog(@"Employess: %@", employees);
    NSLog(@"Giving up ownership of one employee");
    [employees removeObjectAtIndex:5];
    NSLog(@"Giving up ownership of array");
    
    NSPredicate *predicate = [NSPredicate predicateWithFormat:@"holder.valueOfAssets > 70"];
    
    NSArray *toBeReclaimed = [allAssets filteredArrayUsingPredicate:predicate];
    
    NSLog(@"toBeReclaimed: %@", toBeReclaimed);
    NSLog(@"executives: %@", executives);
    
    executives = nil;
    toBeReclaimed = nil;
    allAssets = nil;
    employees = nil;
}
  //sleep(100);
  return 0;
}
