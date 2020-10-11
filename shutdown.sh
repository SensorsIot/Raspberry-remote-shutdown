#!/bin/bash
echo "Shutdown started"
mosquitto_pub -h hub.local -t prusa/mains/sonoff -m OFF
sudo shutdown now
