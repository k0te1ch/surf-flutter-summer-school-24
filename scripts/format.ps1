if ((Get-Item -Path ".").Name -eq "scripts") {
    Set-Location ..
}

& fvm dart format --line-length 120 lib test
