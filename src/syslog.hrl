-define(SYSLOG_INFO(Who, Msg),
    syslog:send(?MODULE_STRING, self(), ?LINE, Who, info, Msg)
).