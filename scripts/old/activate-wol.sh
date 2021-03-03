#! /bin/bash

sleep 30;

until sudo ethtool enp5s0 | grep "Wake-on: g";
do
    sudo service wol restart;
    sudo ethtool enp5s0;
    sleep 5;
done
