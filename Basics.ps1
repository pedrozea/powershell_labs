#Declaracion de variables
$a = 5
$b = 4
$palabra1 = "a"
$palabra2 = "A"
$palabra3 = "Apple"
$frase1 = "My name is Alejo"

#Operaciones con variables
$a -lt $b
$a -gt $b
$a -ne $b
$a -eq $b

#Operaciones con texto
$palabra1 -eq $palabra2
$palabra1 -ceq $palabra2
$palabra3 -eq "A*"
$palabra3 -like "A*"
$palabra3 -like "*p*"
$palabra3 -like "A??le"
$frase1 -match "Alejo"
$frase1 -cmatch "Alejo"

Get-Alias #Permite visualizar los Alias existentes y su correpondiente Cmdlet

Set-Alias #Para crear un nuevo alias