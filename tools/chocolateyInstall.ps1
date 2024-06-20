$packageArgs = @{
  packageName    = "$env:ChocolateyPackageName"
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  url64bit       = 'https://github.com/oven-sh/bun/releases/download/bun-v1.1.15/bun-windows-x64.zip'
  checksum64     = 'ff74a8e91d49ad615dd1242a6cb389a5a4aad0795257e817e6f63849d83d23c6b78798cde689d58e2b0007eac7f4b1537d592530928a4f3741552dcf4663d508'
  checksumType64 = 'sha512'
}

Install-ChocolateyZipPackage @packageArgs
