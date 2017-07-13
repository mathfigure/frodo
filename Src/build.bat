@REM  WIN32 MSVC Build Script 
@REM
@REM    Open the 'Visual Studio Command Prompt' 32-bit
@REM    and run this to generate the Frodo executable.
@REM
copy /y sysconfig.h.WIN32 sysconfig.h
copy /y Makefile.WIN32 Makefile
nmake -a
