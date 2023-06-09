#----------------#
# Script to get a Folder Size
# author: Pedro Zea
#----------------#


## Parameters

param([string]$directory="C:/temp")


## Functions

function Get-FolderSize ($path)
{
    $info = Get-ChildItem $path -Recurse | Measure-Object -Property length -Sum
    $size = [math]::Round($info.Sum/1GB,2)
    return $size
}


# Main process

 Write-Host "La carpeta" $directory "pesa" $(Get-FolderSize $directory) "GB"
