#!/bin/bash

git checkout master
git pull
git checkout mach-on
git rebase master
sed -i 's/running: false/running: true/g' vm*.yaml
git add vm*
git commit -m "Turn machines on"
git push -u origin mach-on
