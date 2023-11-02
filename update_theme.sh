#!/usr/bin/env bash

month=$(date +'%m')

current_season=""

previous_season=""

case $month in
    12|1|2)
        current_season="winter"
        ;;
    3|4|5)
        current_season="spring"
        ;;
    6|7|8)
        current_season="summer"
        ;;
    9|10|11)
        current_season="fall"
        ;;
    *)
        echo "Ungültiger Monat"
        exit 1
        ;;
esac

case $current_season in
    "winter")
        previous_season="fall"
        ;;
    "spring")
        previous_season="winter"
        ;;
    "summer")
        previous_season="spring"
        ;;
    "fall")
        previous_season="summer"
        ;;
    *)
        echo "Ungültige Jahreszeit"
        exit 1
        ;;
esac

sed -i "s%$previous_season%$current_season%g" README.md