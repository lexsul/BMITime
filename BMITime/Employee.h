//
//  Employee.h
//  BMITime
//
//  Created by Сулейманов Алексей on 16/04/2019.
//  Copyright © 2019 alex. All rights reserved.
//

#import "Person.h"
@class Asset;
NS_ASSUME_NONNULL_BEGIN

@interface Employee : Person
{
  int employeeID;
  NSMutableSet *assets;
  //NSString *lastName;
  //Person * spouse;
  //NSMutableArray *children;
}
@property int employeeID;
- (void)addAssetsObject:(Asset *)a;
- (unsigned int)valueOfAssets;
@end

NS_ASSUME_NONNULL_END
