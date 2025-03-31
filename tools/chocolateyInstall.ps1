$avx2 = Start-Job -ScriptBlock {
  Add-Type -MemberDefinition '[DllImport("kernel32.dll")] public static extern bool IsProcessorFeaturePresent(int ProcessorFeature);' -Name Kernel32 -Namespace Win32
  return [Win32.Kernel32]::IsProcessorFeaturePresent(40)
} | Receive-Job -Wait -AutoRemoveJob

$packageArgs = @{
  packageName   = "$env:ChocolateyPackageName"
  unzipLocation = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
}

if ($avx2) {
  $packageArgs.url64bit       = 'https://github.com/oven-sh/bun/releases/download/bun-v1.2.8/bun-windows-x64.zip'
  $packageArgs.checksum64     = 'c24ff3cf8bc96fa6d63ba5371be65ba4cb6e2e6db01539ad1f8441b3cc1c4465'
  $packageArgs.checksumType64 = 'sha256'
} else {
  $packageArgs.url64bit       = 'https://github.com/oven-sh/bun/releases/download/bun-v1.2.8/bun-windows-x64-baseline.zip'
  $packageArgs.checksum64     = '6278a4d7fb5b15a87b4dc8242b0e9102e0967f3e47157925152432e176370834'
  $packageArgs.checksumType64 = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
