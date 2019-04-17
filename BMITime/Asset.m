//
//  Asset.m
//  BMITime
//
//  Created by Сулейманов Алексей on 17/04/2019.
//  Copyright © 2019 alex. All rights reserved.
//

#import "Asset.h"

@implementation Asset
@synthesize label, resaleValue, holder;

- (NSString *)description
{
  if ([self holder]) {
    return [NSString stringWithFormat:@"<%@: $%d, assigned to %@",[self label],[self resaleValue],[self holder]];
  } else {
    return [NSString stringWithFormat:@"<%@: $@%d unassigned>", [self label], [self resaleValue]];
  }
  //return [NSString stringWithFormat:@"<%@: $%d >", [self label],[self resaleValue]];
}

- (void)dealloc
{
  NSLog(@"deallocating %@", self);
}
@end
