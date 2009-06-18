changelog for CBFLog
===================

06/18/09:CBF (PB)
------------------
- Patrick (pburleson) was kind enough to fix our singleton object. There was lots of
discussion about this on twitter the other night, and now it's fixed. We
now have a proper singleton instance that fixes the retain/release issues
that the sample singleton code from Apple introduced.

blog post describing the issue & fix: http://boredzo.org/blog/archives/2009-06-17/doing-it-wrong

Thank you for taking care of this, Patrick!

05/09/09:CBF
------------
- Added a text macros definition for xCode. Just drop it in your textmacros
directory. (~/Library/Application
Support/Developer/Shared/Xcode/Specifications/)

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

