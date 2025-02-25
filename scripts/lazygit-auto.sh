#!/usr/bin/expect

spawn lazygit

expect "?" {
    send "n\r"
}

interact

