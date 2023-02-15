# Script to download, Silent Install and then clean up once installed Microsoft Excel for Mac
# Writen by https://github.com/LukeSprayUK

#Make temp folder for downloads.
mkdir "/tmp/office/";
cd "/tmp/office/";

#Download Excel into temp folder.
curl -L -o /tmp/office/excel.pkg "https://go.microsoft.com/fwlink/?linkid=525135";

#Silent Install each application.
sudo -S installer -allowUntrusted -pkg "/tmp/office/excel.pkg" -target /;

#Remove Temp Files
sudo rm -rf "/tmp/office/";
