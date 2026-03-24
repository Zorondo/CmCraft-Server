#!/bin/bash
# скачивание файла
cd ../

curl -L -o map.zip https://www.dropbox.com/scl/fi/sh8fu7r084s6ue5gpxnsq/maps.zip?rlkey=dozr6vmpkn5bo05u5lx50uub2&st=or14isbs&dl=1
unzip map.zip

# переносим миры

# переносим карты бедварса
mv maps/BedWars/* .

# переносим лобби

mv maps/world .

# переносим карты скайварса

mv maps/SkyWars/* plugins/Skywars/maps

echo "Готово"