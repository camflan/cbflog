CBFLog
=====

TRY
----

* Build/Run the CBFLogDemo project. Play with the settings in CBFLog.h to see how it affects logging.


USE
---

* Add CBFLog.h and CBFLog.m to your project.
* Add CBFLog.h to the files where you will be logging.
* Define `_CBFLOG_ENABLED`. You can uncomment the first config line in CBFLog.h or you can add it in your project settings.

* Optional:
  Add cbflog.xctxtmacros to your Text Macros directory. (`~/Library/Application Support/Developer/Shared/Xcode/Specifications`)

TIP
---
    I added `-D_CBFLOG_ENABLED` to my Project Settings `Other C Flags` for 
    my DEBUG project setting profile only. This means that my release and 
    distro project profiles don't log anything, which is what I want. 
    Logging is a fairly expensive process, so this should improve 
    performance for your users.


CONFIGURE
---------

* Open CBFLog.h and edit settings in the `CONFIGURATION` area. All of the settings should be well documented.   

CONTRIBUTORS
------------
Camron Flanders (camflan)
Patrick Burleson (pburleson)
 

NOTES
-----

`cbfLog` can accept a couple arguments: level and override.
Debug levels are 1-5 `(DEBUG, INFO, NOTIFY, WARNING, ERROR, CRITICAL)`.
Override is nice, so you can turn the GLOBAL_SOFT_ENABLE setting to NO (off) and still log a few important things without commenting out all your logging statements.

I have included a few convenience functions that you can use: `cbfDebug, cbfInfo, cbfNotify, cbfWarning, cbfError, cbfCritical` are mapped to a non-forced level-specific `cbfLog` call.

For even more convenient use, you can use the text macros. 
(`<message>` indicates the arg bubbles that you can jump to & change)
    
    dlog expands to cbfDebug(@"<message>");
    ilog expands to cbfInfo(@"<message>");
    nlog expands to cbfNotify(@"<message>");
    wlog expands to cbfWarning(@"<message>");
    elog expands to cbfError(@"<message>");
    clog expands to cbfCritical(@"<message>");


LICENSE
-------

Software License Agreement (BSD License)

Copyright (C) 2009, Camron Flanders.
All rights reserved.
   
Redistribution and use in source and binary forms, with or without
modification, are permitted provided that the following conditions are met:

* Redistributions of source code must retain the above copyright
  notice, this list of conditions and the following disclaimer.
* Redistributions in binary form must reproduce the above copyright
  notice, this list of conditions and the following disclaimer in the
  documentation and/or other materials provided with the distribution.

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDER AND CONTRIBUTORS "AS IS" AND ANY
EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS BE LIABLE FOR ANY
DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
(INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND
ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
(INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
