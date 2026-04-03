#!/usr/bin/bash
 
echo "Устанавливаем зависимости"

if ! command -v java --version >/dev/null 2>&1; then
    echo "Java не найдена. Устанавливаю..."

    if command -v apt >/dev/null 2>&1; then
        sudo apt update
        sudo apt install openjdk-21-jdk -y 

    elif command -v pacman >/dev/null 2>&1; then
        sudo pacman -Sy jdk21-openjdk --noconfirm

    else
        echo "Неизвестный пакетный менеджер"
        exit 1
    fi

else
    echo "Java уже установлена"
fi


if ! command -v tmux --version >/dev/null 2>&1; then
    echo "tmux не найден. Устанавливаю..."

    if command -v apt >/dev/null 2>&1; then
        sudo apt update
        sudo apt install tmux -y 

    elif command -v pacman >/dev/null 2>&1; then
        sudo pacman -Sy tmux --noconfirm

    else
        echo "Неизвестный пакетный менеджер"
        exit 1
    fi

else
    echo "tmux уже установлен"
fi

echo "Готово"