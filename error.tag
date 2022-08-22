// error.tag
//
// error.tag is a TagID script to send a short message using Telegram.
// You conbine the script to any TagID script and run, it notifies if an error occurs during running.
//
// Copyright 2022 -, tecking
// Version 1.0.0
//
// Licensed under the MIT License.


//
// constants
//
TELEGRAM_ID =


//
// notify as a Telegram message
//
py begin
import datetime as dt
now = dt.datetime.now()
time = now.strftime('%Y-%m-%d %H:%M')
print(time)
py finish

telegram `TELEGRAM_ID` [TagUI] An error occurred during running. `py_result`