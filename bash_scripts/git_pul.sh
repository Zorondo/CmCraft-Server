#!/bin/bash


echo "Обновление репозитория"

if ! command -v git >/dev/null 2>&1; then
    echo "Git не найден. Устанавливаю..."

    if command -v apt >/dev/null 2>&1; then
        sudo apt update
        sudo apt install -y git

    elif command -v pacman >/dev/null 2>&1; then
        sudo pacman -Sy git --noconfirm

    elif command -v dnf >/dev/null 2>&1; then
        sudo dnf install -y git

    else
        echo "Неизвестный пакетный менеджер"
        exit 1
    fi

else
    echo "Git уже установлен"
fi


if ! command -v git >/dev/null 2>&1; then
    git clone https://github.com/Zorondo/CmCraft-Server.git
fi