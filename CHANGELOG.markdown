changelog for CBFLog
===================

02/25/09:CBF
------------
- Now defaults to using printf instead of NSLog. Slightly faster, but more
	importantly, it doesn't pollute your console/system.logs. There is also 
	less before our information. You probably don't need
	it to tell you what the project name is, time, thread, etc.
- Now logs function name containing the log statement
- Added options to remove part or all of the output information (filename,
	line, function, severity)
- Can now alter log statement format in segments -- one for each part of
the log statement.


02/24/09:CBF
------------
- Added simple CBFLogDemo app to show how it works. Simply build/run to see
	our output. Play around with settings in CBFLog.h to see how it affects
	logging.
- Added this changelog.
- Added `DISABLE_NSLOG_WITH_CBFLOG` switch.

