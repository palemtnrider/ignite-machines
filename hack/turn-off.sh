#!/bin/bash

git checkout master
git pull
sed -i 's/running: true/running: false/g' vm*.yaml
git add vm*
git commit -m "Turn machines off"
git push 
