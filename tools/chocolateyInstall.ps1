$packageArgs = @{
  packageName    = "$env:ChocolateyPackageName"
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  url64bit       = 'https://github.com/oven-sh/bun/releases/download/bun-v1.1.20/bun-windows-x64.zip'
  checksum64     = 'd4f3a2316bfbaf87ff1e8b4bf25bb8fe0d2c624394c1418dfaec1764aabce9ca74f49c79345be36d29e0a93eb1368b4b506b259c869d4aed34a88b1f7d1212e6'
  checksumType64 = 'sha512'
}

Install-ChocolateyZipPackage @packageArgs
