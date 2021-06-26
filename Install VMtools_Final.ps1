#Written by Simon Green
#simong@intellectit.com.au
#25/06/2021

# from https://packages.vmware.com/tools/releases/11.2.6/windows/x64/
$filename = "VMware-tools-11.3.0-18090558-x86_64.exe"
$download_url = "https://packages.vmware.com/tools/releases/11.3.0/windows/x64/VMware-tools-11.3.0-18090558-x86_64.exe"
$folderpath = "C:\intellectit\"
$downloaded_file = "$folderpath$filename"


#create working directory
Write-Verbose -Verbose "Creating IntellectIT Directory"
New-Item -ItemType Directory -Force -Path $folderpath

#Download file
Write-Verbose -Verbose "Downloading File"
Start-BitsTransfer -Source $download_url -Destination $downloaded_file

#Install VMwareTools 
Write-Verbose -Verbose "Installing File. Reboot will happen when completed"
Start-Process -FilePath "$downloaded_file" -ArgumentList "/S /v/qn"
#Noreboot flag set
#Start-Process -FilePath "$folderpath\VMware-tools-11.2.6-17901274-x86_64.exe" -ArgumentList "/S /v/qn REBOOT=R"
