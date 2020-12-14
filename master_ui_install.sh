#!/bin/bash 

echo "CLONING INTO MASTER UI"

git clone https://github.com/reegsie/koompi-onelab-status.git

echo "ENTERING REPO"


cd koompi-onelab-status && cd Master_UI && cd .services

echo "===> MOVING FILES TO OPPERATIONAL LOCATION [POCVIDE SUDO PASSWORD]"

sudo mv .exec /opt

echo "DONE"

