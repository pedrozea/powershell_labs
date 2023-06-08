Function Suma-Numeros
{
    param([int]$num1, [int]$num2)
    return $num1 + $num2

}

Suma-Numeros

$Resultado = Suma-Numeros 23 21

$Resultado


# Custom Function

function Get-FolderSize ($directory)
{
    $info = Get-ChildItem $directory -Recurse | Measure-Object -Property length -Sum
    $size = [math]::Round($info.Sum/1GB,2)
    return "La carpeta " + $directory + " pesa " + $size + " GB"
}

