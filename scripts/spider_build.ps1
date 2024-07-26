if ((Get-Item -Path ".").Name -eq "scripts") {
    Set-Location ..
}

& fvm flutter pub run spider build

if ($?) {
    & ./scripts/format.ps1

    & fvm flutter test --update-goldens test/assets/images_test.dart
} else {
    Write-Host "The build command failed. Skipping formatting and testing."
}
