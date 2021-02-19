#!/bin/bash
if [ “$INDEX” = “off” ] ;
then rm /etc/nginx/sites-available/localhost && cp /var/index_off.conf /etc/nginx/sites-available/localhost && echo INDEX off ;
else echo INDEX on ;
fi
