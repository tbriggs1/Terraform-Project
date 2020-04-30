#!/bin/bash

cd /home/ubuntu/app
sudo export DB_HOST=${db_host}
npm install
node app.js
