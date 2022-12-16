$version="7.0.1" # Here you set the SDK versions you wish to remove

$Host.UI.RawUI.ForegroundColor = "Yellow"

try { Remove-Item -Force -Path "C:\Program Files\dotnet\sdk\$version" -erroraction stop }
catch [System.Management.Automation.ItemNotFoundException] { $null }
'Not Found Directory. Skipping...'

try { Remove-Item -Force -Path "C:\Program Files\host\fxr\$version" -erroraction stop }
catch [System.Management.Automation.ItemNotFoundException] { $null }
'Not Found Directory. Skipping...'

try { Remove-Item -Force -Path "C:\Program Files\shared\Microsoft.AspNetCore.App\$version" -erroraction stop }
catch [System.Management.Automation.ItemNotFoundException] { $null }
'Not Found Directory. Skipping...'

try { Remove-Item -Force -Path "C:\Program Files\shared\Microsoft.WindowsDesktop.App\$version" -erroraction stop }
catch [System.Management.Automation.ItemNotFoundException] { $null }
'Not Found Directory. Skipping...'

$Host.UI.RawUI.ForegroundColor = "Green"

echo 'All Old SDKs were removed :)'