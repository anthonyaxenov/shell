#!/bin/bash
echo
echo "==============================================="
echo "Installing apache2..."
echo "==============================================="
echo

sudo apt install -y --autoremove apache2
sudo service apache2 restart
apache2 -v
