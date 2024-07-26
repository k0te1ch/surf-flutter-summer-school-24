if ((Get-Item -Path ".").Name -eq "scripts") {
    Set-Location ..
}

& fvm flutter clean

Set-Location -Path "ios"

& pod cache clean --all
& xcodebuild clean
Remove-Item -Path ".symlinks" -Recurse -Force -ErrorAction SilentlyContinue
Remove-Item -Path "Pods" -Recurse -Force -ErrorAction SilentlyContinue
Remove-Item -Path "Podfile.lock" -Force -ErrorAction SilentlyContinue

Set-Location -Path ".."
