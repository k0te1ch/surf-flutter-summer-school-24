if ((Get-Item -Path ".").Name -eq "scripts") {
    Set-Location ..
}

$file = "test/coverage_helper_test.dart"
"# Helper file to make coverage work for all dart files" | Out-File -FilePath $file -Encoding utf8
"# ignore_for_file: unused_import, directives_ordering" | Add-Content -Path $file

Get-ChildItem -Path "lib" -Recurse -File -Exclude "*.g.dart", "*.freezed.dart" | Where-Object { $_.FullName -notlike "*generated*" } | ForEach-Object {
    $currentFile = $_.FullName
    $firstLine = Get-Content -Path $currentFile -TotalCount 1
    if ($firstLine -notmatch "part") {
        $relativePath = $currentFile.Substring(4)  # Remove the first 4 characters (assuming 'lib/')
        $importStatement = "import 'package:surf_flutter_summer_school_24$relativePath';"
        Add-Content -Path $file -Value $importStatement
    }
}

"# ignore: no-empty-block" | Add-Content -Path $file
"void main(){}" | Add-Content -Path $file

& fvm flutter format .

& fvm flutter test --coverage

& lcov --remove coverage/lcov.info 'lib/*/*.freezed.dart' 'lib/*/*.g.dart' 'lib/*/*.part.dart' 'lib/generated/*.dart' 'lib/generated/*/*.dart' -o coverage/new_lcov.info

& genhtml coverage/new_lcov.info -o coverage/html

Start-Process "coverage/html"
Remove-Item -Path $file -Force