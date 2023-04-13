$version="7.*" # Here you set the SDK versions you wish to remove

$Host.UI.RawUI.ForegroundColor = "Yellow"

try { Remove-Item -Force -Path "C:\Program Files\dotnet\sdk\$version" -erroraction stop }
catch [System.Management.Automation.ItemNotFoundException] { $null }
'Not Found Directory. Skipping...'

try { Remove-Item -Force -Path "C:\Program Files\dotnet\host\fxr\$version" -erroraction stop }
catch [System.Management.Automation.ItemNotFoundException] { $null }
'Not Found Directory. Skipping...'

try { Remove-Item -Force -Path "C:\Program Files\dotnet\shared\Microsoft.NETCore.App\$version" -erroraction stop }
catch [System.Management.Automation.ItemNotFoundException] { $null }
'Not Found Directory. Skipping...'

try { Remove-Item -Force -Path "C:\Program Files\dotnet\shared\Microsoft.WindowsDesktop.App\$version" -erroraction stop }
catch [System.Management.Automation.ItemNotFoundException] { $null }
'Not Found Directory. Skipping...'

try { Remove-Item -Force -Path "C:\Program Files\dotnet\shared\Microsoft.AspNetCore.App\$version" -erroraction stop }
catch [System.Management.Automation.ItemNotFoundException] { $null }
'Not Found Directory. Skipping...'

try { Remove-Item -Force -Path "C:\Program Files\dotnet\packs\Microsoft.AspNetCore.App.Ref\$version" -erroraction stop }
catch [System.Management.Automation.ItemNotFoundException] { $null }
'Not Found Directory. Skipping...'

try { Remove-Item -Force -Path "C:\Program Files\dotnet\packs\Microsoft.NETCore.App.Host.win-arm\$version" -erroraction stop }
catch [System.Management.Automation.ItemNotFoundException] { $null }
'Not Found Directory. Skipping...'

try { Remove-Item -Force -Path "C:\Program Files\dotnet\packs\Microsoft.NETCore.App.Host.win-arm64\$version" -erroraction stop }
catch [System.Management.Automation.ItemNotFoundException] { $null }
'Not Found Directory. Skipping...'

try { Remove-Item -Force -Path "C:\Program Files\dotnet\packs\Microsoft.NETCore.App.Host.win-x64\$version" -erroraction stop }
catch [System.Management.Automation.ItemNotFoundException] { $null }
'Not Found Directory. Skipping...'

try { Remove-Item -Force -Path "C:\Program Files\dotnet\packs\Microsoft.NETCore.App.Host.win-x86\$version" -erroraction stop }
catch [System.Management.Automation.ItemNotFoundException] { $null }
'Not Found Directory. Skipping...'

try { Remove-Item -Force -Path "C:\Program Files\dotnet\packs\Microsoft.NETCore.App.Ref\$version" -erroraction stop }
catch [System.Management.Automation.ItemNotFoundException] { $null }
'Not Found Directory. Skipping...'

try { Remove-Item -Force -Path "C:\Program Files\dotnet\packs\Microsoft.WindowsDesktop.App.Ref\$version" -erroraction stop }
catch [System.Management.Automation.ItemNotFoundException] { $null }
'Not Found Directory. Skipping...'

try { Remove-Item -Force -Path "C:\Program Files\dotnet\sdk-manifests\$version" -erroraction stop }
catch [System.Management.Automation.ItemNotFoundException] { $null }
'Not Found Directory. Skipping...'

try { Remove-Item -Force -Path "C:\Program Files\dotnet\templates\$version" -erroraction stop }
catch [System.Management.Automation.ItemNotFoundException] { $null }
'Not Found Directory. Skipping...'

$Host.UI.RawUI.ForegroundColor = "Green"

echo 'All Old SDKs were removed :)'