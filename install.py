import os
import subprocess

#Очистка терминала
def clear():
    os.system("clear")

#Старт сервера
def start():
    print("Запуск сервера")
    subprocess.run(["bash", "start.sh"])

#Установка ядра
def download_core():
    subprocess.run(
        ["bash", "core.sh"],
        cwd="bash_scripts"
        )

#Установка плагинов
def download_plugins():
    subprocess.run(
        ["bash", "plugins.sh"],
        cwd="bash_scripts"
    )

#Обновление репозитория
def download_mirror():
    print("Обновление репозитория...")

while True:
    clear()


    print("""
    МЕНЮ
1)Запустить сервер    
2) Скачать ядро
3) Скачать плагины
4) Обновить Github репозиторий
5) Скачать все
6) Выход
        """)


    choice = int(input("Выбор:"))

    if choice == 1:
        #Запуск сервера
        start()
    elif choice == 2:
        #Установка ядра
        download_core()
    elif choice == 3:
        #Установка плагинов
        download_plugins()

    elif choice == 4:
        #Обновление Github репозитория
        downloadf_mirror()


    elif choice == 5: 
        #Обновление всего
        download_core()
        download_plugins()
        download_mirror()

    elif choice == 6:
        break

    else:
        print("Ошибка")