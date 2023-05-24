###PowerShell retorna todo como un objeto

Get-Member #En PowerShell, casi todo es un objeto, lo que significa que cada elemento tiene propiedades (datos sobre el objeto) y métodos (acciones que puedes realizar con el objeto). Este comando ayuda a inspeccionar estos objetos y ver qué propiedades y métodos están disponibles.

gm

help Get-ChildItem -Online


$MisArchivos = Get-ChildItem

Write-Host "En el directorio actual tienes" $MisArchivos.Count "Carpetas"


###Sort para ordenar los objetos de acuerdo a una propiedad

$MisArchivos |sort -Property LastWriteTime -Descending


###Where para filtrar objetos por propiedades

$MisArchivos | Where-Object {$_.Name -like ".b*"} | sort -Descending

$MisArchivos | Where-Object {$_.Length -gt 1312}


$MisCarpetas | Sort-Object -Property CreationTime | Format-Table Name,CreationTime

$MisArchivos | Where-Object {($_.length -gt 100000) -and ($_.Name -like "D*")}

$MisArchivos | sort -Property CreationTime -Descending | Format-Table Name,CreationTime


#Iteraciones con foreach

1..10

1.10 |foreach {$_*2}

1..10 |foreach {$_*2}

1..10 |foreach {"$_" + " -"}

1..10 |foreach {"Iteración No. $_"}

1..10 |foreach {"*"*$_}

1..10 | foreach {if ($_%2){"El numero $_ es impar"}}

###Strings

$stringcomputers = @("Server1","Server2","Server3")

$stringcomputers[2]

$stringcomputers[2] = "Server4"

$stringcomputers |foreach {$_ + " tiene " + $_.length + " caracteres"}

$stringlaptops = @("Laptop1","Laptop2")

$equipos = $stringcomputers + $stringlaptops

