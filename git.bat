::[Bat To Exe Converter]
::
::YAwzoRdxOk+EWAnk
::fBw5plQjdG8=
::YAwzuBVtJxjWCl3EqQJgSA==
::ZR4luwNxJguZRRnk
::Yhs/ulQjdF+5
::cxAkpRVqdFKZSjk=
::cBs/ulQjdFy5
::ZR41oxFsdFKZSDk=
::eBoioBt6dFKZSDk=
::cRo6pxp7LAbNWATEpCI=
::egkzugNsPRvcWATEpCI=
::dAsiuh18IRvcCxnZtBJQ
::cRYluBh/LU+EWAnk
::YxY4rhs+aU+JeA==
::cxY6rQJ7JhzQF1fEqQJQ
::ZQ05rAF9IBncCkqN+0xwdVs0
::ZQ05rAF9IAHYFVzEqQJQ
::eg0/rx1wNQPfEVWB+kM9LVsJDGQ=
::fBEirQZwNQPfEVWB+kM9LVsJDGQ=
::cRolqwZ3JBvQF1fEqQJQ
::dhA7uBVwLU+EWDk=
::YQ03rBFzNR3SWATElA==
::dhAmsQZ3MwfNWATElA==
::ZQ0/vhVqMQ3MEVWAtB9wSA==
::Zg8zqx1/OA3MEVWAtB9wSA==
::dhA7pRFwIByZRRnk
::Zh4grVQjdCuDJGmW+0UiKRYUag2OOXj6Tq1EvqHHwvmesR8hQfEtRI3S1IiJKfRd713hFQ==
::YB416Ek+ZG8=
::
::
::978f952a14a936cc963da21a135fa983
@echo off
chcp 65001 > nul
setlocal enabledelayedexpansion

rem If you don't add path for msys2 into %PATH%, enable following line.
rem set "PATH=D:\Program Files (x86)\Msys2\usr\bin;%PATH%"

if "%1" equ "rev-parse" goto rev_parse
set "par=%*"
set "oldpar=%0"
set "par=!par:%oldpar%=!" 
gits %par%
goto :eof
:rev_parse
set "par=%*"
set "oldpar=%0"
set "par=!par:%oldpar%=!" 
set "var="
for /f "delims=" %%i in ('gits %par%') do set "var=%%i"
set A=^"
set B=^"
set wind=%A%%var%%B%
cygpath -w -s %wind%
goto :eof