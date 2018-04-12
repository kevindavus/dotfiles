tell application "Tunnelblick"
    connect "aws"
    get state of first configuration where name = "aws"
    repeat until result = "CONNECTED"
        delay 1
        get state of first configuration where name = "aws"
    end repeat
end tell
