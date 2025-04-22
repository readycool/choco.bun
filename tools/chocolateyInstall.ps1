$avx2 = Start-Job -ScriptBlock {
  Add-Type -MemberDefinition '[DllImport("kernel32.dll")] public static extern bool IsProcessorFeaturePresent(int ProcessorFeature);' -Name Kernel32 -Namespace Win32
  return [Win32.Kernel32]::IsProcessorFeaturePresent(40)
} | Receive-Job -Wait -AutoRemoveJob

$packageArgs = @{
  packageName   = "$env:ChocolateyPackageName"
  unzipLocation = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
}

if ($avx2) {
  $packageArgs.url64bit       = 'https://github.com/oven-sh/bun/releases/download/bun-v1.2.10/bun-windows-x64.zip'
  $packageArgs.checksum64     = 'e936fcfacb3cdd823f4fd60402920f52219cfe1dd970eb5650656f67a5ee9109'
  $packageArgs.checksumType64 = 'sha256'
} else {
  $packageArgs.url64bit       = 'https://github.com/oven-sh/bun/releases/download/bun-v1.2.10/bun-windows-x64-baseline.zip'
  $packageArgs.checksum64     = '112bf923f6553e5e46d113d13df4b98af3af4454b7de710b09a2dc56acf9d75f'
  $packageArgs.checksumType64 = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
