//
//  CFLog.m
//  TaskPhone
//
//  Created by Camron Flanders on 2.23.09.
//  Copyright 2009 camronflanders. All rights reserved.
//

#import "CFLog.h"


@implementation CFLog

#pragma mark -
#pragma mark SINGLETON STUFF

static CFLog *sharedDebug = nil;
static NSArray *severityLevels = nil;
static NSString *logFormatString = @"[%@] File:%@ Line:%d\n                                            %@\n\n";

+ (CFLog *) sharedDebug
{
	@synchronized(self)
	{
		if (sharedDebug == nil)
		{
			[[self alloc] init];
		}
	}
	return sharedDebug;
}

+ (void)initialize
{
	if(severityLevels == nil)
		severityLevels = [[NSArray alloc] initWithObjects: @"", 
						   @"CRITICAL", 
						   @" ERROR  ", 
						   @"WARNING ", 
						   @"  INFO  ", 
						   @" DEBUG  ", nil];	
}

+ (id) allocWithZone:(NSZone *) zone
{
	@synchronized(self)
	{
		if (sharedDebug == nil)
		{
			sharedDebug = [super allocWithZone:zone];
			return sharedDebug;
		}
	}
	return nil;
}

- (id)copyWithZone:(NSZone *)zone
{
	return self;
}

- (id)retain
{
	return self;
}

- (void)release
{
	// No action required...
}

- (unsigned)retainCount
{
	return UINT_MAX;  // An object that cannot be released
}

- (id)autorelease
{
	return self;
}

- (void)dealloc
{
	[super dealloc];
}

#pragma mark -
#pragma mark debug methods
- (void)log:(int)severity overrideGlobal:(BOOL)override fileName:(char *)file lineNumber:(int)line input:(NSString *)message, ...
{
	// check to see if we have disabled debugging globally and return unless
	// we want to override the global setting for this statment.
	if(!GLOBAL_SOFT_ENABLE && !override) return;
	if(severity > LOG_LEVEL) return;	// if we are below our threshold, return
	
	va_list argList;
	va_start(argList, message);
	NSString *messageStr = [[NSString alloc] initWithFormat:message 
												  arguments:argList];
	va_end(argList);
	
	// use regular NSLog output and get out of town.
	if(BARE_OUTPUT)
	{
		NSLog(messageStr);
		return;
	}
	
	// make sure we have a valid severity level.
	int outputLevel;
	if(severity == 0)
		outputLevel = 1;
	else if(!severity)
		outputLevel = DEFAULT_SEVERITY;
	else
		outputLevel = severity;

	NSString *outputLevelString = [NSString stringWithString:[severityLevels objectAtIndex:outputLevel]];
	
	NSString *filePath = [[[NSString alloc] initWithBytes:file 
												   length:strlen(file) 
												 encoding:NSUTF8StringEncoding] autorelease];	
	if(!LOG_FULL_PATH)
		filePath = [filePath lastPathComponent];
	
	NSString *logString = [[[NSString alloc] initWithFormat:logFormatString, 
															outputLevelString, 
															filePath, 
															line, 
															messageStr] autorelease];
	
	NSLog(@"%@", logString);
}

@end
