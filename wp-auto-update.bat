@echo off
rem wp-auto-update.bat is a batch file for TagUI Windows version.
rem The file calls wp-auto-update.tag and error.tag with the command prompt window minimized.
rem 
rem Copyright 2022 -, tecking
rem Version 1.0.0
rem
rem Licensed under the MIT License.

start /min cmd /c call %~dp0..\..\src\tagui.cmd %~dp0wp-auto-update.tag %~dp0wp-auto-update.csv -h ^|^| cmd /c %~dp0..\..\src\tagui.cmd %~dp0error.tag -h
exit
