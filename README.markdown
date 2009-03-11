CFLog
=====

TRY
----

* Build/Run the CFLogDemo project. Play with the settings in CFLog.h to see how it affects logging.


USE
---

* Add CFLog.h and CFLog.m to your project.
* Add CFLog.h to the files where you will be logging.
* Define `_CFLOG_ENABLED`. You can uncomment the first config line in CFLog.h or you can add it in your project settings.

TIP
---
    I added `-D_CFLOG_ENABLED` to my Project Settings `Other C Flags` for 
    my DEBUG project setting profile only. This means that my release and 
    distro project profiles don't log anything, which is what I want. 
    Logging is a fairly expensive process, so this should improve 
    performance for your users.


CONFIGURE
---------

* Open CFLog.h and edit settings in the `CONFIGURATION` area. All of the settings should be well documented.   
 

NOTES
-----

`cfLog` can accept a couple arguments: level and override.
Debug levels are 1-5 `(DEBUG, INFO, WARNING, NOTIFY, ERROR, CRITICAL)`.
Override is nice, so you can turn the GLOBAL_SOFT_ENABLE setting to NO (off) and still log a few important things without commenting out all your logging statements.

I have included a few convenience functions that you can use: `cfDebug, cfInfo, cfWarning, cfNotify, cfError, cfCritical` are mapped to a non-forced level-specific `cfLog` call.



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
