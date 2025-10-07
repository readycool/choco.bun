$avx2 = Start-Job -ScriptBlock {
  Add-Type -MemberDefinition '[DllImport("kernel32.dll")] public static extern bool IsProcessorFeaturePresent(int ProcessorFeature);' -Name Kernel32 -Namespace Win32
  return [Win32.Kernel32]::IsProcessorFeaturePresent(40)
} | Receive-Job -Wait -AutoRemoveJob

$packageArgs = @{
  packageName   = "$env:ChocolateyPackageName"
  unzipLocation = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
}

if ($avx2) {
  $packageArgs.url64bit       = 'https://github.com/oven-sh/bun/releases/download/bun-v1.2.23/bun-windows-x64.zip'
  $packageArgs.checksum64     = '2171e94f9d1e0cd6d45bdced38e2dc821f4181a075ed80772e750b3298a9016d'
  $packageArgs.checksumType64 = 'sha256'
} else {
  $packageArgs.url64bit       = 'https://github.com/oven-sh/bun/releases/download/bun-v1.2.23/bun-windows-x64-baseline.zip'
  $packageArgs.checksum64     = 'bf8b6fd980fc09ffeba4b68bcfeab3babc2c10596dd916eb9163b503b6406866'
  $packageArgs.checksumType64 = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
