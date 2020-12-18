@echo off
git init -b main
SLEEP 1
git add .
SLEEP 1
git commit -m "Initial commit"
SLEEP 1
git remote add origin %1
SLEEP 1
git push -u origin main