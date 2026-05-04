function Start-FileGeneration {
    param ([int]$FileCount = 15)
    $targetFolder = "Loodud_Failid"
    if (-not (Test-Path -Path $targetFolder)) {
        New-Item -ItemType Directory -Path $targetFolder | Out-Null
    }
    $baseNames = Get-BaseNames
    $extensions = Get-Extensions
    
    Write-Host "Alustan $FileCount faili genereerimist..." -ForegroundColor Green
    for ($i = 1; $i -le $FileCount; $i++) {
        $randomName = Get-Random -InputObject $baseNames
        $randomExt = Get-Random -InputObject $extensions
        $fileName = "{0}_{1}{2}" -f $randomName, $i, $randomExt
        $fullPath = Join-Path -Path $targetFolder -ChildPath $fileName
        New-Item -ItemType File -Path $fullPath -Force | Out-Null
    }
    Write-Host "Kõik failid on edukalt loodud kausta '$targetFolder'!" -ForegroundColor Green
}
