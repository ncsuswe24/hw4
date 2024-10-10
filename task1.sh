#!/bin/bash

kill -9 "$(ps -fu $USER | grep "[s]h infinite.sh" | tail -n 1 | awk '{print $2}')"
