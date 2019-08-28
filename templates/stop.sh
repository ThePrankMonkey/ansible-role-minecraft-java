#!/bin/bash

cd {{ paths_minecraft.install }}
/usr/bin/tmux send-keys -t minecraft.0 "save-all" ENTER
sleep 30
/usr/bin/tmux send-keys -t minecraft.0 \
    "stop" \
    ENTER
/usr/bin/tmux kill-session -t minecraft
