@echo off
:start

set /p MATH=��������Ҫ����ı��ʽ?

set /a RESULT=%MATH%
echo %RESULT%

if %RESULT%==99 start calc.exe

pause

goto start