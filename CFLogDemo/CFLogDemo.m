/* 
 * CFLog is a singleton logging object for more powerful logging in your cocoa projects
 *
 * Permission is hereby granted, free of charge, to any person
 * obtaining a copy of this software and associated documentation
 * files (the "Software"), to deal in the Software without
 * restriction, including without limitation the rights to use,
 * copy, modify, merge, publish, distribute, sublicense, and/or sell
 * copies of the Software, and to permit persons to whom the
 * Software is furnished to do so, subject to the following
 * conditions:
 * 
 * The above copyright notice and this permission notice shall be
 * included in all copies or substantial portions of the Software.
 * 
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
 * EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES
 * OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
 * NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT
 * HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
 * WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
 * FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR
 * OTHER DEALINGS IN THE SOFTWARE.
 *
 * CFLogDemo.m
 * 
 * Created by Camron Flanders on 2.23.09
 * Copyright 2009 camronflanders. All rights reserved.
 * 
 */


#import <Foundation/Foundation.h>
#import "CFLog.h"

int main (int argc, const char * argv[]) {
    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
	
	// statements of higher severity than current LOG_LEVEL will be displayed.
	// i.e. if LOG_LEVEL is at level 3 (warning), then WARNING, ERROR, & CRITICAL
	// messages will be output.

	// these will display as long as you have CFLlog enabled (_CFLOG_ENABLED)
	// & our GLOBAL_SOFT_ENABLE switch is on (YES).
    cfDebug(@"Here is a debug level statement.");
	cfInfo(@"Here is a info level statement.");
	cfWarning(@"Here is a warning level statement.");
	cfError(@"Here is a error level statement.");
	cfCritical(@"Here is a critical level statment.");
	
	// easily add a truely blank line
	cfBlank();
	
	// these will display as long as _CFLOG_ENABLED is defined, as they override
	// the soft switch.
	cfLog(5, YES, @"debug statment, soft switch overridden.");
	cfLog(4, YES, @"info statment, soft switch overridden.");
	cfLog(3, YES, @"warning statment, soft switch overridden.");
	cfLog(2, YES, @"error statment, soft switch overridden.");
	cfLog(1, YES, @"critical statment, soft switch overridden.");
	
	cfBlank();
	
	NSLog(@"just a nslog test.");
	
	// done with demo.
	
    [pool drain];
    return 0;
}
