### Enable UDP

Ensure that syslogd has udp sockets enabled:
[OS X](http://wiki.springsurprise.com/2010/01/30/enable-remote-logging-on-mac-os-x/)

### Build

    ./rebar compile
    sudo ./rebar install
    
### Log

    0> application:start(syslog).
    ok
    1> syslog:send(wombat, info, "happy").
    ok
    
### Logged

    $ syslog
    ...
    Tue Mar 16 18:36:48 192.168.1.101  wombat[4294967295] <Info>: happy

### TODO
 * √ UDP
 * _ TCP
 * _ destination host
 * _ destination port
 * √ level
 * _ facility
