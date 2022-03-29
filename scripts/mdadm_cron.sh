#! /bin/bash

if [ -x /usr/share/mdadm/checkarray ]; then /usr/share/mdadm/checkarray --cron --all --idle; fi
