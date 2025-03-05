#!/bin/bash

TABBY_CMD="$HOME/tabby/tabby serve --model Qwen2.5-Coder-1.5B --device vulkan"
TABBY_PID_FILE="/tmp/tabby.pid"
TABBY_LOG_FILE="/tmp/tabby.log"

case "$1" in
    start)
        if [ ! -f "$TABBY_PID_FILE" ]; then
            $TABBY_CMD > "$TABBY_LOG_FILE" 2>&1 &
            echo $! > "$TABBY_PID_FILE"
            echo "Tabby service started with PID $(cat $TABBY_PID_FILE)"
        else
            echo "Tabby service is already running with PID $(cat $TABBY_PID_FILE)"
        fi
        ;;
    stop)
        if [ -f "$TABBY_PID_FILE" ]; then
            kill -9 $(cat "$TABBY_PID_FILE")
            rm "$TABBY_PID_FILE"
            echo "Tabby service stopped"
        else
            echo "Tabby service is not running"
        fi
        ;;
    *)
        echo "Usage: $0 {start|stop}"
        exit 1
        ;;
esac
