echo off
cls

REM download STM8 serial bootloader tool from https://github.com/gicking/stm8gal

REM set path to flash loader
set LOADER=".\stm8gal.exe"

REM set other parameters
set FIRMWARE=".\dummy.s19"
REM set FIRMWARE=".\dummy.txt"

REM set serial port
set PORT=COM11

REM for UART reply mode (MODE=1|2) limit baudrate. Found >19.2Baud is unreliable
IF NOT %MODE% == 0  set BAUD=19200

REM use flash loader to upload new SW
%LOADER% -p %PORT% -w %FIRMWARE% -v 2

echo.
PAUSE 
