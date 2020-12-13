#!/bin/bash

echo "CLONING INTO CLIENT ONELAB REPO"

git clone https://github.com/reegsie/client-onelab.git

echo "CLONED REPO"

wait "2"

echo "ENTERING OPERATIONAL LOCATION"

cd client-onelab

echo "MOVING .client_onelab FOLDER TO OPERATIONAL LOCATION"

echo "please enter you sudo password"

sudo mv .client_onelab /opt

echo "FILES SET IN FINAL LOCATION SUCCESSFULLY" 
