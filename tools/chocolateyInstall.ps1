$packageArgs = @{
  packageName    = "$env:ChocolateyPackageName"
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  url64bit       = 'https://github.com/oven-sh/bun/releases/download/bun-v1.1.23/bun-windows-x64.zip'
  checksum64     = 'ce8fe6d681a8161cc5365a7fa06b6e10ae4a8b6bafa49dce62f072eb485a8ac4f382c586b700ff0f78a23c311da6131b6d56100337469884fc13266afbe20c37'
  checksumType64 = 'sha512'
}

Install-ChocolateyZipPackage @packageArgs
