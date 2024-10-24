$packageArgs = @{
  packageName    = "$env:ChocolateyPackageName"
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  url64bit       = 'https://github.com/oven-sh/bun/releases/download/bun-v1.1.32/bun-windows-x64.zip'
  checksum64     = 'f6bf593d332aa972e888d1d97034f6488c6848db3b841f3824767dc003f65001f0229e451577cb0f2153c2be5b62308476881ff8b52b01c3606ebc4032bc4143'
  checksumType64 = 'sha512'
}

Install-ChocolateyZipPackage @packageArgs
