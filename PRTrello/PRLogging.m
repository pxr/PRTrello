//
//  PRLogging.m
//  PRTrello
//
//  Created by Paul Robinson on 2013-05-13.
//  Copyright (c) 2013 Elastic Rat. All rights reserved.
//

#import "PRLogging.h"

@implementation PRLogging
+ (PRLogging *)sharedPRLogging {
  static PRLogging *_sharedPRLogging = nil;
  static dispatch_once_t onceToken;
  dispatch_once(&onceToken, ^{
    _sharedPRLogging = [[PRLogging alloc] init];
  });
  
  return _sharedPRLogging;
}

- (id)init
{
  self = [super init];
  if (self) {
    [self setup];
  }
  return self;
}

- (void)setup {
  [DDLog addLogger:[DDASLLogger sharedInstance]];
  [DDLog addLogger:[DDTTYLogger sharedInstance]];
}
@end
