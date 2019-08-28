#!/bin/bash

cd {{ paths_minecraft.install }}
/usr/bin/tmux new -d -s minecraft
/usr/bin/tmux send-keys -t minecraft.0 \
    "java -Xmx1024M -Xms1024M -jar minecraft-server.jar nogui" \
    ENTER
