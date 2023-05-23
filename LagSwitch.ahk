
Menu, Tray, Icon, shell32.dll, 325


toggle := 0


e::
    toggle := !toggle
    
    ; Disconnect or reconnect based on the current state
    if (toggle)
    {
        RunWait, %comspec% /c ipconfig /release, , Hide
        TrayTip, Lag Switch, Off, 1, 1
    }
    else
    {
        RunWait, %comspec% /c ipconfig /renew, , Hide
        TrayTip, Lag Switch, On, 1, 1
    }
    
    return
