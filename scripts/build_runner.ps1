if ((Get-Item -Path ".").Name -eq "scripts") {
    Set-Location ..
}

# Run the Flutter commands
& fvm flutter pub get
& fvm flutter pub run build_runner build --delete-conflicting-outputs
& ./scripts/format.ps1