$packageArgs = @{
  packageName    = "$env:ChocolateyPackageName"
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  url64bit       = 'https://github.com/oven-sh/bun/releases/download/bun-v1.1.8/bun-windows-x64.zip'
  checksum64     = '3dbd549d1a7dd9635ba9c674fab9f577f79cf14648b3a8dad7e16559a1f255ab3b5b08ef47268cdb48fb5a892f459e712056d62b07f1fcd1b946933503bede82'
  checksumType64 = 'sha512'
}

Install-ChocolateyZipPackage @packageArgs
