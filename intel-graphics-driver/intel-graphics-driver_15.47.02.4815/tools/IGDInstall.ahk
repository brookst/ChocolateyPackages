#NoEnv 
#NoTrayIcon
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

WinWaitActive, , This setup program will install the following components , 1200
WinActivate
Send {space}
Send !n
WinWaitActive, , License Agreement , 90
Send !y
Send !n
Sleep, 30000
WinWaitActive, , Setup Progress , 90
Send !n
WinWaitActive, , Setup Is Complete , 90
Send {down}
Send !f
If WinExist("Error")
  {
   Send {space}
  }



