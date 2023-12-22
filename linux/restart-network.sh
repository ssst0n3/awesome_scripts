#!/bin/bash
sudo service NetworkManager restart
sudo service network-manager restart
sudo nmcli networking off 
sudo nmcli networking on
sudo nmcli radio wifi off
sudo nmcli radio wifi on
sudo ifconfig wlan0 down
sudo ifconfig wlan0 up
