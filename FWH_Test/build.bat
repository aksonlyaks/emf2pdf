:start
hbmk2 proj.hbp

IF %ERRORLEVEL% GTR 1000 goto setup
goto :eof
:setup
set HB_INSTALL_PREFIX=C:\harbour32
SET CD_SRC=%CD%
:: I use visual studio 2017 x86 on a win64 system.
CALL "c:\Program Files (x86)\Microsoft Visual Studio\2017\Community\VC\Auxiliary\Build\vcvars32.bat"
echo on
cd %CD_SRC%
set path=%PATH%;%HB_INSTALL_PREFIX%\bin;%HB_INSTALL_PREFIX%\bin\win\msvc
goto start
