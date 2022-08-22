// wp-auto-update.tag
//
// wp-auto-update.tag is a TagID script to update WordPress websites.
// Once you setup a configuration file (CSV format),
// it cruises multiple websites and updates WordPress automatically.
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
// variables initialization
//
plugin = ''
theme = ''
translation = ''


//
// login
//
`SITE_URL`/wp-login.php
type user_login as `USER_LOGIN`
type user_pass as `USER_PASS`
click wp-submit


//
// update
//
wait 5
if exist('//*[@id="menu-dashboard"]/ul/li[3]/a')
	click //*[@id="menu-dashboard"]/ul/li[3]/a

wait 5
if exist('plugins-select-all')
	click plugins-select-all
	click upgrade-plugins
if url() contains 'do-plugin-upgrade'
	wait 30
if exist('//*[@id="menu-dashboard"]/ul/li[3]/a')
	click //*[@id="menu-dashboard"]/ul/li[3]/a

wait 5
if exist('themes-select-all')
	click themes-select-all
	click upgrade-themes
if url() contains 'do-theme-upgrade'
	wait 30
if exist('//*[@id="menu-dashboard"]/ul/li[3]/a')
	click //*[@id="menu-dashboard"]/ul/li[3]/a

wait 5
if exist('upgrade-translations')
	click //*[@id="wpbody-content"]/div[3]/form/p[2]/input
if url() contains 'do-translation-upgrade'
	wait 30
if exist('//*[@id="menu-dashboard"]/ul/li[3]/a')
	click //*[@id="menu-dashboard"]/ul/li[3]/a

wait 5
title = title()
if exist('//*[@id="wpbody-content"]/div[3]/p[4]')
	read //*[@id="wpbody-content"]/div[3]/p[4] to plugin
if exist('//*[@id="wpbody-content"]/div[3]/p[5]')
	read //*[@id="wpbody-content"]/div[3]/p[5] to theme
if exist('//*[@id="wpbody-content"]/div[3]/p[6]')
	read //*[@id="wpbody-content"]/div[3]/p[6] to translation
msg_body = title + "\n" + plugin + "\n" + theme + "\n" + translation 


//
// send report as a Telegram message
//
py begin
import datetime as dt
now = dt.datetime.now()
time = now.strftime('%Y-%m-%d %H:%M')
print(time)
py finish

telegram `TELEGRAM_ID` [TagUI] Running report by wp-auto-update.tag `py_result`\n\n`msg_body`