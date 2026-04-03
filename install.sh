#!/bin/bash

# Очистка терминала
clear_screen() {
    clear
}

# Старт сервера
start_server() {
    echo "Запуск сервера"
    bash start.sh
}

# Установка зависимостей
download_java(){
    (cd bash_scripts && bash install_java.sh)
}

# Установка карт
download_map() {
    (cd bash_scripts && bash map.sh)
}

# Установка ядра
download_core() {
    (cd bash_scripts && bash core.sh)
}

# Установка плагинов
download_plugins() {
    (cd bash_scripts && bash plugins.sh)
}

# Обновление репозитория
download_mirror() {
    (cd bash_scripts && bash git_pull.sh)
}

while true
do
    clear_screen

    echo "
    МЕНЮ
1) Запустить сервер
2) Скачать ядро
3) Скачать плагины
4) Обновить Github репозиторий
5) Скачать все
6) Скачать карты
7) Скачать зависимости
8) Выход
"

    read -p "Выбор: " choice

    case $choice in
        1)
            start_server
            ;;
        2)
            download_core
            ;;
        3)
            download_plugins
            ;;
        4)
            download_mirror
            ;;
        5)
            download_core
            download_plugins
            download_mirror
            download_map
            download_java
            ;;
        
        6)
            download_map
            ;;

        7)
            download_java
            ;;

        8)
            break
            ;;
        *)
            echo "Ошибка"
            ;;
    esac

    read -p "Нажмите Enter чтобы продолжить..."
done
