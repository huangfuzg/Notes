@echo off
:: How to Copy,Move and Rename files + More

copy C:\Users\leslie\Desktop\������Ա.txt D:\Batch_Script

move C:\Users\leslie\Desktop\��Ƭ����.txt D:\Batch_Script

:: ���ļ����Ƶ����棬��Ӧ��ͬ�� Windows ����
xcopy /y %CD%\lesson4.bat c:\Users\%USERNAME%\Desktop
:: start �� call �����Դ�����ļ������߿�ʼ��ִ�г���
start %CD%\test.txt
call %CD%\test.txt
rename %CD%\1.txt 2.txt 
del %CD%\delete.txt

pause 