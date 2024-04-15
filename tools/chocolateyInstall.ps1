$packageArgs = @{
  packageName    = "$env:ChocolateyPackageName"
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  url64bit       = 'https://github.com/oven-sh/bun/releases/download/bun-v1.1.3/bun-windows-x64.zip'
  checksum64     = 'd4cee89aa0c435c99ad2efbb4f895ec9e03f13573a64ee0e7dc349e49a4a25236533dcb6829092e7fce094b311d93cfd5c15b137d74236ffc82b793ffd24222b'
  checksumType64 = 'sha512'
}

Install-ChocolateyZipPackage @packageArgs
