$packageArgs = @{
  packageName    = "$env:ChocolateyPackageName"
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  url64bit       = 'https://github.com/oven-sh/bun/releases/download/bun-v1.1.33/bun-windows-x64.zip'
  checksum64     = '2c7173fede50426066fe997721204737b4433769bfa74ee8395d8ea808bed5cd28d3f23959f7b362ccabfe839a2274ad88727c4b45b440e7c63c522177a50187'
  checksumType64 = 'sha512'
}

Install-ChocolateyZipPackage @packageArgs
