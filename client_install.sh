#!/bin/bash

echo "CLONING INTO CLIENT ONELAB REPO"

git clone https://github.com/reegsie/client-onelab.git

echo "CLONED REPO"

wait 2

echo "ENTERING OPERATIONAL LOCATION"

cd client-onelab

echo "MOVING .client_onelab FOLDER TO OPERATIONAL LOCATION"

echo "please enter you sudo password"

sudo mv .client_onelab /opt

echo "FILES SET IN FINAL LOCATION SUCCESSFULLY" 

wait 5

echo "CLONING INTO MASTER UI"

git clone https://github.com/reegsie/koompi-onelab-status.git

echo "ENTERING REPO"


cd koompi-onelab-status && cd Master_UI && cd .services

echo "===> MOVING FILES TO OPPERATIONAL LOCATION [POCVIDE SUDO PASSWORD]"

sudo mv .exec /opt

echo "DONE"

echo "CREATING ADMIN USER FOR CONTROL PURPOSES [SUDO PASSWD WHERE NECESSARY]"

sudo useradd admin

echo "ADDING ADMIN -> WHEEL GROUP"

sudo usermod -aG wheel admin

echo "SHOULD BE DONE >>> CREATING HOME DIR FOR ADMIN"

cd /home && mkdir admin

echo "Creating SSH KEY"

ssh-keygen --noconfirm 

echo "DONE"
