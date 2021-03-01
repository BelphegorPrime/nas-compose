#! /usr/bin/env bash

sleep 10;

ethtool -s enp5s0 wol d;

sleep 5;

ethtool -s enp5s0 wol g;