tell application "Tunnelblick"
    connect "corp"
    get state of first configuration where name = "corp"
    repeat until result = "CONNECTED"
        delay 1
        get state of first configuration where name = "corp"
    end repeat
end tell