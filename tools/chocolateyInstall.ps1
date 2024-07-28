$packageArgs = @{
  packageName    = "$env:ChocolateyPackageName"
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  url64bit       = 'https://github.com/oven-sh/bun/releases/download/bun-v1.1.21/bun-windows-x64.zip'
  checksum64     = 'd47b4d5c067215fe2ffeaf25748a62d53333c91e7d1d6e3832c12477f5a21b5724e3d06bc808a5d3a49c11d816ae1ec01f2e9ec231547cbd66c16dcee38500d6'
  checksumType64 = 'sha512'
}

Install-ChocolateyZipPackage @packageArgs
