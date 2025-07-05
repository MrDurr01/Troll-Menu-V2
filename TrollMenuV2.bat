@echo off
title Immortal - The harmless prank script
color 1F
mode con: cols=90 lines=30
cls

echo ************************************************************
echo Welcome to the harmless prank script by CrypticData101
echo Current version: 1.0 Safe Edition
echo Target: Windows 7 and newer
echo Purpose: For laughs, not damage.
echo Subscribe to: https://www.youtube.com/@CrypticData101
echo ************************************************************
echo.
echo Here you can choose the level that you want to try.
echo Each level contains 4 funny but safe prank actions.
echo [The least intense is - Level Casual.]
echo The most intense is - Level Deadly (still safe!).
echo.
echo Press (A) - (G) to choose the level.
echo ************************************************************
echo.
echo (A) - 0. [Level Casual]
echo Description: Very basic pranks like opening calculator or notepad.
echo.
echo (B) - 1. [Level Normal]
echo Description: Adds fun popups and fake errors.
echo.
echo (C) - 2. [Level Annoying]
echo Description: Visual spam, speech, and browser popups.
echo.
echo (D) - 3. [Level Harsh]
echo Description: More alerts, multiple windows, voice spam.
echo.
echo (E) - 4. [Level Cruel]
echo Description: Tricky visuals and fake system warnings.
echo.
echo (F) - 5. [Level Deadly]
echo Description: Intense—but fake—system troll. STILL SAFE.
echo.
echo (G) - Exit
echo.

choice /c ABCDEFG /n /m "Choose your level (A-G): "

if errorlevel 7 goto EXIT
if errorlevel 6 goto LEVEL5
if errorlevel 5 goto LEVEL4
if errorlevel 4 goto LEVEL3
if errorlevel 3 goto LEVEL2
if errorlevel 2 goto LEVEL1
if errorlevel 1 goto LEVEL0

:LEVEL0
echo Launching Level 0 - Casual...
start calc
start notepad
timeout /t 1 >nul
start https://theuselessweb.com
goto END

:LEVEL1
echo Launching Level 1 - Normal...
start notepad
powershell -Command "[System.Windows.MessageBox]::Show('You clicked something!','Troll')"
powershell -Command "Add-Type -AssemblyName System.Speech; (New-Object System.Speech.Synthesis.SpeechSynthesizer).Speak('Hello there!')"
goto END

:LEVEL2
echo Launching Level 2 - Annoying...
start https://www.windows93.net
start "" "ms-settings:"
powershell -Command "for ($i=0; $i -lt 3; $i++) {[System.Windows.MessageBox]::Show('Why did you click this again?','Annoyed')}"
goto END

:LEVEL3
echo Launching Level 3 - Harsh...
start "" cmd /k echo WHY ARE YOU DOING THIS?
powershell -Command "(New-Object -ComObject wscript.shell).Popup('System alert: keyboard detected.', 2, 'System', 64)"
start "" "write"
powershell -Command "(New-Object -ComObject wscript.shell).Run('notepad')"
goto END

:LEVEL4
echo Launching Level 4 - Cruel...
powershell -Command "Add-Type -AssemblyName System.Speech; $speak = New-Object System.Speech.Synthesis.SpeechSynthesizer; $speak.Speak('Warning! Virus detected! Just kidding.')"
start "" "https://www.pointerpointer.com"
start mspaint
goto END

:LEVEL5
echo Launching Level 5 - Deadly (SAFE Edition)...
start "" cmd /k color 4f && echo SYSTEM COMPROMISED. INITIATING SELF DESTRUCTION... && timeout /t 2
start "" "https://www.youtube.com/watch?v=dQw4w9WgXcQ"
powershell -Command "[System.Windows.MessageBox]::Show('This system will not self-destruct. All good :)','Fake Critical')"
goto END

:EXIT
echo Exiting... Stay safe!
timeout /t 1 >nul
exit

:END
echo Done! Press any key to return to menu.
pause >nul
call "%~f0"
