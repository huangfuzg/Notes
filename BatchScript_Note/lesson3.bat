@echo off
echo �������ܲ�����֤
echo.
echo �㽫ѡ����������������һ��
echo -create
echo -check
echo.

:start
set /p PROGRAM= ��ѡ��
goto %PROGRAM%

:create
set /p PWD=���������룺
echo %PWD% > test.txt
pause
goto start

:check
set /p PWD_CHECK= ��ȷ�����룺

for /f "Delims=" %%a in (test.txt) do (
set TEXT=%%a
)
if %PWD_CHECK%==%TEXT% goto correct
echo �������
goto start

:correct
echo ��ȷ��
goto start

pause