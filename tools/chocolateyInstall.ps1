$packageArgs = @{
  packageName    = "$env:ChocolateyPackageName"
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  url64bit       = 'https://github.com/oven-sh/bun/releases/download/bun-v1.1.7/bun-windows-x64.zip'
  checksum64     = '2aec7747a7a0fe106efca060cab66e5bf49afddb3a482a2f0fbb0c02bb8b6e2f1f1ee53fbfdddd0926282335941589179ba8cb2d8e73c83b2c43a74b2bd4c56c'
  checksumType64 = 'sha512'
}

Install-ChocolateyZipPackage @packageArgs
