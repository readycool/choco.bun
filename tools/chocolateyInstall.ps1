$avx2 = Start-Job -ScriptBlock {
  Add-Type -MemberDefinition '[DllImport("kernel32.dll")] public static extern bool IsProcessorFeaturePresent(int ProcessorFeature);' -Name Kernel32 -Namespace Win32
  return [Win32.Kernel32]::IsProcessorFeaturePresent(40)
} | Receive-Job -Wait -AutoRemoveJob

$packageArgs = @{
  packageName   = "$env:ChocolateyPackageName"
  unzipLocation = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
}

if ($avx2) {
  $packageArgs.url64bit       = 'https://github.com/oven-sh/bun/releases/download/bun-v1.2.1/bun-windows-x64.zip'
  $packageArgs.checksum64     = 'c9762dc863db969ca2d3e231f4d9d3c1500d2c6b37ed0b9e562a3360a848fb80'
  $packageArgs.checksumType64 = 'sha256'
} else {
  $packageArgs.url64bit       = 'https://github.com/oven-sh/bun/releases/download/bun-v1.2.1/bun-windows-x64-baseline.zip'
  $packageArgs.checksum64     = '39b3c329717c6b3cca3681dd6fcb62d92d5f7bab9f1a19b53ddee54f6dc52637'
  $packageArgs.checksumType64 = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
