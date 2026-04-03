#!/usr/bin/env sh
tmux new-session -d -s minecraft "java -Xms512M -Xmx3072M -jar server.jar nogui"
echo "Сервер запущен"
