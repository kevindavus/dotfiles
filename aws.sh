tell application "Tunnelblick"
    connect "messagesystems-awsprod-kdavis"
    get state of first configuration where name = "messagesystems-awsprod-kdavis"
    repeat until result = "CONNECTED"
        delay 1
        get state of first configuration where name = "messagesystems-awsprod-kdavis"
    end repeat
end tell
