#!/bin/bash

cd {{ paths_minecraft.install }}
/usr/bin/tmux send-keys -t minecraft.0 "save-all" ENTER
sleep 30
/usr/bin/tmux send-keys -t minecraft.0 \
    "stop" \
    ENTER
/usr/bin/tmux send-keys -t minecraft.0 \
    "java -Xmx1024M -Xms1024M -jar minecraft-server.jar nogui" \
    ENTER
