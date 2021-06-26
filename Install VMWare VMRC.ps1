#Update VMWare VMRC
#Written by Simon Green
#simong@intellectit.com.au
#25/06/2021

#from https://my.vmware.com/web/vmware/downloads/details?downloadGroup=VMRC1201&productId=974
$filename = "VMware-VMRC-12.0.1-18113358.exe"
$download_url = "http://expertcare.com.au/downloads/$filename"
$folderpath = "C:\intellectit\"
$downloaded_file = "$folderpath$filename"

#create working directory
Write-Verbose -Verbose "Creating IntellectIT Directory"
New-Item -ItemType Directory -Force -Path $folderpath

#Download file
Write-Verbose -Verbose "Downloading File"
Start-BitsTransfer -Source $download_url -Destination $downloaded_file

#Install VMwareTools 
Write-Verbose -Verbose "Installing File."
Start-Process -FilePath "$downloaded_file" -ArgumentList "/s /v/qn EULAS_AGREED=1 AUTOSOFTWAREUPDATE=1"