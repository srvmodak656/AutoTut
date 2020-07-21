timeout 5
taskkill /IM "AutoTut.exe"
wmic Path win32_process Where "CommandLine Like '%AutoTut.jar%'" Call Terminate
git stash
git pull
java -jar Updater.jar 3
timeout 5
AutoTut.exe
exit
