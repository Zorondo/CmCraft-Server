#!/bin/bash
# скачивание файла
cd ../

curl -L -o map.tar.gz https://www.dropbox.com/scl/fi/njtpmpqv75vb4u7lvf66v/maps.tar.gz?rlkey=524xflqqlnsoa7sryp23rto6j&st=f8co2csq&dl=1
tar -xzvf map.tar.gz

# переносим миры

# переносим карты бедварса
mv maps/BedWars/* .

# переносим лобби

mv maps/world .

# переносим карты скайварса

mv maps/SkyWars/* plugins/Skywars/maps

echo "Готово"