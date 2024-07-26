if ((Get-Item -Path ".").Name -eq "scripts") {
    Set-Location ..
}

Set-Location -Path "tools/api_generator"

& ./dto_codegen.ps1

& ./request_codegen.ps1

Set-Location -Path "../.."
