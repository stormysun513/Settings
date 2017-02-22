#!/bin/sh 

function main() {
    osascript 2>/dev/null <<EOF
    tell application "System Events"
        tell process "Terminal" to keystroke "t" using command down
    end 
    tell application "Terminal"
        do script with command "clear" in window 1
        do script with command "cd \"$PWD\"; $*" in window 1
        do script with command "echo hello" in window 1
    end tell
EOF
}

main
