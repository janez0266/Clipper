rem SAYWHAT Demo illustrating how to pop up screens and moving bar menus
rem in BATch files.

ECHO off
cls

rem Invoke Vidpop 3.6 and suppress "Already Resident" message
  vidpop /s
  cls

rem Make sure VIDPOP is in a known state (if it was already resident)
  POP Reset Vidpop
  POP Set Menu Escape On
  POP Set Keyboard Off

rem Determine which screen library to use
  POP Video Card
  SETERROR.COM
  if errorlevel 77 goto MONO
  if errorlevel 67 goto COLOR

rem Not the correct version of VIDPOP (need 3.6 or greater)
  echo Incorrect version of VIDPOP loaded. Change to version 3.6.
  goto QUIT

:COLOR
  POP Set Library To color.lib
  goto BEGIN

:MONO
  POP Set Library To mono.lib

:BEGIN
  POP swdemo01
  SETERROR.COM
  if errorlevel 3 goto QUIT
  if errorlevel 2 goto UTILITY
  if errorlevel 1 goto MENUS
  if errorlevel 0 goto QUIT
  goto BEGIN

:MENUS
  POP swdemo04
  SETERROR.COM
  if errorlevel 6 goto begin
  if errorlevel 5 POP swdemo09
  if errorlevel 4 POP swdemo08
  if errorlevel 3 POP swdemo07
  if errorlevel 2 POP swdemo06
  if errorlevel 1 POP swdemo05
  pause
  rem now remove text by scrolling it up like a window-shade
  POP Scroll Up 4,0,20,80,1
  POP Scroll Up 4,0,20,80,1
  POP Scroll Up 4,0,20,80,1
  POP Scroll Up 4,0,20,80,1
  POP Scroll Up 4,0,20,80,1
  POP Scroll Up 4,0,20,80,1
  POP Scroll Up 4,0,20,80,1
  POP Scroll Up 4,0,20,80,1
  POP Scroll Up 4,0,20,80,1
  POP Scroll Up 4,0,20,80,1
  POP Scroll Up 4,0,20,80,1
  POP Scroll Up 4,0,20,80,1
  POP Scroll Up 4,0,20,80,1
  POP Scroll Up 4,0,20,80,1
  POP Scroll Up 4,0,20,80,1
  POP Scroll Up 4,0,20,80,1
  goto MENUS

:UTILITY
  POP swdemo11
  pause
  goto BEGIN

:QUIT
  POP Reset Vidpop
  CLS
