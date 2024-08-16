$packageArgs = @{
  packageName    = "$env:ChocolateyPackageName"
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  url64bit       = 'https://github.com/oven-sh/bun/releases/download/bun-v1.1.24/bun-windows-x64.zip'
  checksum64     = '3ad39f36b1fff296cb794d96e03f4880a8e07bbd5256437931555e1c7b590b3a8767b7765f84fc0ae0e9aa9e5543fd8a8ef901c855331fda5d1888836d0731f8'
  checksumType64 = 'sha512'
}

Install-ChocolateyZipPackage @packageArgs
