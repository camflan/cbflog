//
//  CFLog.h
//  TaskPhone
//
//  Created by Camron Flanders on 2.23.09.
//  Copyright 2009 camronflanders. All rights reserved.
//

#import <Foundation/Foundation.h>

// configuration
#define GLOBAL_SOFT_ENABLE	YES	// turn logging on or off, globally, allow overrides

#define BARE_OUTPUT			NO	// disables our verbose information
#define LOG_FULL_PATH		NO	// file name, or fullpath to file.

#define LOG_LEVEL			5	// 0-5, this defines what levels to actually display.
#define DEFAULT_SEVERITY	5	// if severity is not defined, use this.

// functions
#ifdef _CFLOG_ENABLED
#define cfLog(level, override, format,...) [[CFLog sharedDebug] log:(level) overrideGlobal:(override) fileName:__FILE__ lineNumber:__LINE__ input:(format), ##__VA_ARGS__]

// convenience functions
#define cfDebug(format,...)     [[CFLog sharedDebug] log:5 overrideGlobal:NO fileName:__FILE__ lineNumber:__LINE__ input:(format), ##__VA_ARGS__]
#define cfInfo(format,...)      [[CFLog sharedDebug] log:4 overrideGlobal:NO fileName:__FILE__ lineNumber:__LINE__ input:(format), ##__VA_ARGS__]
#define cfWarning(format,...)   [[CFLog sharedDebug] log:3 overrideGlobal:NO fileName:__FILE__ lineNumber:__LINE__ input:(format), ##__VA_ARGS__]
#define cfError(format,...)     [[CFLog sharedDebug] log:2 overrideGlobal:NO fileName:__FILE__ lineNumber:__LINE__ input:(format), ##__VA_ARGS__]
#define cfCritical(format,...)  [[CFLog sharedDebug] log:1 overrideGlobal:NO fileName:__FILE__ lineNumber:__LINE__ input:(format), ##__VA_ARGS__]

#else
// clear all functions so we don't waste any processing overhead while not in DEBUG
#define cfLog(level, override, format,...)
#define cfDebug(format,...)
#define cfInfo(format,...)
#define cfWarning(format,...)
#define cfError(format,...)
#define cfCritical(format,...)
#define NSLog(format, ...)
#endif



@interface CFLog : NSObject {
}

+ (CFLog *)sharedDebug;

- (void)log:(int)severity overrideGlobal:(BOOL)override fileName:(char *)file lineNumber:(int)line input:(NSString *)message,...;

@end
