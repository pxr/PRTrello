//
//  PRLogging.h
//  PRTrello
//
//  Created by Paul Robinson on 2013-05-13.
//  Copyright (c) 2013 Elastic Rat. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DDLog.h"
#import "DDASLLogger.h"
#import "DDTTYLogger.h"

static const int ddLogLevel = LOG_LEVEL_VERBOSE;

@interface PRLogging : NSObject
+ (PRLogging *)sharedPRLogging;
@end
