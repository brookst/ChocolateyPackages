﻿$packageName    = 'google-backup-and-sync' 
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url            = 'https://dl.google.com/tag/s/appguid%3D%7B3C122445-AECE-4309-90B7-85A6AEF42AC0%7D%26iid%3D%7B9648D435-67BA-D2A7-54D2-1E0B5656BF03%7D%26ap%3Duploader%26appname%3DBackup%2520and%2520Sync%26needsadmin%3Dtrue/drive/installbackupandsync.exe'
$checksum       = '1A8346F7794FCD63F318AA7913CF3C6E4ED2A4DBFC3170CB714177F1971C8884'
$validExitCodes = @(0)
$ahkExe         = 'AutoHotKey'
$ahkFile        = Join-Path $toolsDir "GBASInstall.ahk"

Start-Process $ahkExe $ahkFile

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = 'exe' 
  url           = $url
  silentArgs    = '' 
  softwareName  = 'Backup and Sync from Google'
  checksum      = $checksum
  checksumType  = 'sha256'  
  validExitCodes = $validExitCodes
  }
  
Install-ChocolateyPackage @packageArgs
