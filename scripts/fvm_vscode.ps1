$dir = ".vscode"
$file = "settings.json"

if (!(Test-Path -Path $dir -PathType Container)) {
    New-Item -Path $dir -ItemType Directory | Out-Null
}

if (Test-Path -Path "$dir\$file" -PathType Leaf) {
    Remove-Item -Path "$dir\$file" -Force
}

$json = @"
{
    "dart.flutterSdkPath": ".fvm/flutter_sdk",
    // Remove .fvm files from search
    "search.exclude": {
        "**/.fvm": true
    },
    // Remove from file watching
    "files.watcherExclude": {
        "**/.fvm": true
    }
}
"@

$json | Out-File -FilePath "$dir\$file" -Encoding utf8
