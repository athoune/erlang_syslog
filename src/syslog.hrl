-define(SYSLOG_INFO(Who, Msg),
    syslog:send(?MODULE, self(), ?LINE, Who, info, Msg)
).