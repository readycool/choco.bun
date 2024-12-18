$packageArgs = @{
  packageName    = "$env:ChocolateyPackageName"
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  url64bit       = 'https://github.com/oven-sh/bun/releases/download/bun-v1.1.39/bun-windows-x64.zip'
  checksum64     = '2b19eb25f31bb09d1fc2eba815f2beaf4616f57690ee5bb637d427214d12dd5d31e19f892d2f2db41c826ed2951115293d336823af14cc97c635bdc3e058e497'
  checksumType64 = 'sha512'
}

Install-ChocolateyZipPackage @packageArgs
