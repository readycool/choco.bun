$packageArgs = @{
  packageName    = "$env:ChocolateyPackageName"
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  url64bit       = 'https://github.com/oven-sh/bun/releases/download/bun-v1.1.40/bun-windows-x64.zip'
  checksum64     = 'b2420896f95588fde0afbc404def6c8883fa0e8c0bd613acf86f94aac86dcab467a81e28a70c349583ed2a581865e085b509804d819b7f07695813cb85c5eb19'
  checksumType64 = 'sha512'
}

Install-ChocolateyZipPackage @packageArgs
