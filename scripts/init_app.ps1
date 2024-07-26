if ((Get-Item -Path ".").Name -eq "scripts") {
    Set-Location ..
}

& fvm flutter clean

& ./scripts/clean_ios.ps1

& fvm flutter pub get

& fvm flutter pub run build_runner build --delete-conflicting-outputs

& ./scripts/format.ps1
