if ((Get-Item -Path ".").Name -eq "scripts") {
    Set-Location ..
}

Set-Location -Path "test"

Get-ChildItem -Path "." -Directory -Filter "goldens" -Recurse | ForEach-Object {
    Remove-Item -Path $_.FullName -Recurse -Force
}

Set-Location -Path ".."

& fvm flutter test --update-goldens
