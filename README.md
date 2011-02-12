### Enable UDP

Ensure that syslogd has udp sockets enabled:
[OS X](http://wiki.springsurprise.com/2010/01/30/enable-remote-logging-on-mac-os-x/)

### Build

    ./rebar compile
    sudo ./rebar install
    
### Log

A macro helps you to log
		-include_lib("syslog/src/syslog.hrl").

		?SYSLOG_INFO(wombat, "~p is happy", ["Wombat"])

### Logged

    $ syslog
    ...
    Tue Mar 16 18:36:48 192.168.1.101  wombat/test[<0.39.0>]: 47: Wombat is happy

In th log, you've got application, "/", module, "[", pid, "]: ", line, ":", message

### TODO
 * √ UDP
 * _ TCP
 * _ destination host
 * _ destination port
 * √ level
 * _ facility
