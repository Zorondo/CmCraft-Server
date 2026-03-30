#!/usr/bin/env sh

if tmux has-session -t minecraft 2>/dev/null; then
    echo "Сервер уже запущен"
else
    tmux new-session -d -s minecraft "java -Xms512M -Xmx3072M -jar server.jar nogui"
    echo "Сервер запущен"
fi
