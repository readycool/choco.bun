$packageArgs = @{
  packageName    = "$env:ChocolateyPackageName"
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  url64bit       = 'https://github.com/oven-sh/bun/releases/download/bun-v1.1.14/bun-windows-x64.zip'
  checksum64     = 'c2465308ffbcaa75512fe3db7010bae7a16d3b6f7fb0ae959567809ea4578921fd08992f221ff19e389c7ecff8efc862a9af3b46fb525af76d4aa819a67cfb2a'
  checksumType64 = 'sha512'
}

Install-ChocolateyZipPackage @packageArgs
