tell application "Tunnelblick"
    connect "messagesystems-corpvpn-kdavis"
    get state of first configuration where name = "messagesystems-corpvpn-kdavis"
    repeat until result = "CONNECTED"
        delay 1
        get state of first configuration where name = "messagesystems-corpvpn-kdavis"
    end repeat
end tell