//
//  Asset.h
//  BMITime
//
//  Created by Сулейманов Алексей on 17/04/2019.
//  Copyright © 2019 alex. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Employee;
NS_ASSUME_NONNULL_BEGIN

@interface Asset : NSObject
{
  NSString *label;
  __weak Employee *holder;
  unsigned int resaleValue;
}
@property (strong) NSString *label;
@property unsigned int resaleValue;
@property (weak) Employee *holder;
@end

NS_ASSUME_NONNULL_END
