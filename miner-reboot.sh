#!/usr/bin/env expect
set miner [lindex $argv 0]
set timeout 60
set host [exec cat switch_host.txt]

spawn sshpass -f switch_password.txt ssh $host
expect "Switched CDU: "
send "reboot $miner\r"
expect "Switched CDU: "
send "exit\r"
expect eof
