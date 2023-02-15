#Installer for Google Drive on Mac
#Created and Maintained by Luke Spray

if [ -d /Applications/Google\ Drive.app/ ];
then
  echo "Already Installed"
  exit 0
else

#Make temp folder for downloads. 
mkdir "/tmp/gdrive/"; cd "/tmp/gdrive/"; 

#Download filestream. 
curl -L -o /tmp/gdrive/GoogleDrive.dmg "https://dl.google.com/drive-file-stream/GoogleDrive.dmg"; 

#Mount
hdiutil mount GoogleDrive.dmg; 

#Install
sudo installer -pkg /Volumes/Install\ Google\ Drive/GoogleDrive.pkg -target "/"; 

#UnMount
hdiutil unmount /Volumes/Install\ Google\ Drive/; 

#Tidy up 
sudo rm -rf /tmp/gdrive/
fi
