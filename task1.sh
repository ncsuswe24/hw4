#!/bin/bash

pid=$(ps -fu $USER | grep "[s]h infinite.sh" | tail -n 1 | awk '{print $2}')

if [ -n "$pid" ]; then
    # Kill the process
    kill -9 "$pid"
    echo "Process killed with PID: $pid"
else
    echo "No infinite.sh process found."
fi
