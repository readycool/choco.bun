$packageArgs = @{
  packageName    = "$env:ChocolateyPackageName"
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  url64bit       = 'https://github.com/oven-sh/bun/releases/download/bun-v1.1.30/bun-windows-x64.zip'
  checksum64     = '882f4426186d1f12334449c15bba90ff0ba0caf8d6229b57c63dff473617544c0de917069c46ea37380917b11ad5f7787e18713939057b283a744e3a0be54a56'
  checksumType64 = 'sha512'
}

Install-ChocolateyZipPackage @packageArgs
