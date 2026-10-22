$avx2 = Start-Job -ScriptBlock {
  Add-Type -MemberDefinition '[DllImport("kernel32.dll")] public static extern bool IsProcessorFeaturePresent(int ProcessorFeature);' -Name Kernel32 -Namespace Win32
  return [Win32.Kernel32]::IsProcessorFeaturePresent(40)
} | Receive-Job -Wait -AutoRemoveJob

$packageArgs = @{
  packageName   = "$env:ChocolateyPackageName"
  unzipLocation = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
}

if ($avx2) {
  $packageArgs.url64bit       = 'https://github.com/oven-sh/bun/releases/download/bun-v1.4.4/bun-windows-x64.zip'
  $packageArgs.checksum64     = 'cd2c0fccc78f3ede1f50ca827a15f063eda13d4d150a3d0674f4f6e323d864a5'
  $packageArgs.checksumType64 = 'sha256'
} else {
  $packageArgs.url64bit       = 'https://github.com/oven-sh/bun/releases/download/bun-v1.4.4/bun-windows-x64-baseline.zip'
  $packageArgs.checksum64     = '0f20ce6674d4f2dbcc8c5d59fdf99f7ba45f8c3b367e0f5781cbfa30a1c78d99'
  $packageArgs.checksumType64 = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
