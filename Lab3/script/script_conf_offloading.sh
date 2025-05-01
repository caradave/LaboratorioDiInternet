#!/bin/bash

sudo ethtool -K eno1 rx off
sudo ethtool -K eno1 tx off
sudo ethtool -K eno1 sg off
sudo ethtool -K eno1 tso off
sudo ethtool -K eno1 ufo off
sudo ethtool -K eno1 gso off
sudo ethtool -K eno1 gro off
sudo ethtool -K eno1 lro off



