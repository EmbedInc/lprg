@echo off
rem
rem   Define the variables for running builds from this source library.
rem
set srcdir=picprg
set buildname=lprg
call treename_var "(cog)source/picprg/lprg" sourcedir
set fwname=lprg
rem set pictype=18LF2455
set pictype=18F24K50
set picclass=PIC
set t_parms=-vdd 3.3
