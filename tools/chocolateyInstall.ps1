$packageArgs = @{
  packageName    = "$env:ChocolateyPackageName"
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  url64bit       = 'https://github.com/oven-sh/bun/releases/download/bun-v1.1.5/bun-windows-x64.zip'
  checksum64     = '5d3ee789380c8f45f9dc18efc9e6bc3b6d704d4c3cd816c2d316803c62b5735b9185124cd093ce75e84ec5de34d348da5fe174e31e323ad66cff1d4e737843d5'
  checksumType64 = 'sha512'
}

Install-ChocolateyZipPackage @packageArgs
