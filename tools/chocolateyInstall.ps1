$packageArgs = @{
  packageName    = "$env:ChocolateyPackageName"
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  url64bit       = 'https://github.com/oven-sh/bun/releases/download/bun-v1.1.9/bun-windows-x64.zip'
  checksum64     = '86f6fb3f592be5b89ceeb179710c46134261e9ac83d25cdc24f8a143b9f524693a40247c129ce13df0ea59b9843b142db06ac807d33ee6d5069c89f993c751d1'
  checksumType64 = 'sha512'
}

Install-ChocolateyZipPackage @packageArgs
