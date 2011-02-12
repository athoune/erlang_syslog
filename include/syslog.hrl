-define(SYSLOG_INFO(Who, Msg, Args),
    syslog:send(?MODULE_STRING, self(), ?LINE, Who, info, Msg, Args)
).