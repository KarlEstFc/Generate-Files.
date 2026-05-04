$files = Get-ChildItem -Path "$PSScriptRoot\Functions\*.ps1"
foreach ($file in $files) {
    . $file.FullName
}
Export-ModuleMember -Function Start-FileGeneration
