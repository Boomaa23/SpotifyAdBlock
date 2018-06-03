@echo off
echo WARNING: THIS WILL REMOVE TEXT FROM YOUR HOSTS FILE
echo If you have issues running this program, try to launch it in administrator mode
echo Enter Y at every stage where it asks to overwrite files, this is planned
PAUSE

attrib -r C:\Windows\System32\drivers\etc\hosts.* /s /d
echo Removed read-only permission

xcopy /s /h /x /o /e /k "C:\Windows\System32\drivers\etc\hosts.*" "%UserProfile%\Desktop"

echo Hosts file copied to desktop

cd %UserProfile%\Desktop
findstr /v /i /b "127.0.0.1 adclick.g.doublecklick.net" hosts > hosts.txt
move "hosts.txt" "hosts"
xcopy /s /h /x /o /e /k "%UserProfile%\Desktop\hosts" "C:\Windows\System32\drivers\etc\" 
echo Old hosts file replaced by new one

del %UserProfile%\Desktop\hosts
echo Hosts file copy removed
echo Process Finished!
PAUSE