#! /usr/bin/env bash

bash -c "
    if ! screen -ls | grep -q \"wol\"; then
        screen -dm -S wol;
    fi
    screen -r wol -X stuff \"ethtool -s enp5s0 wol g\n\";
"