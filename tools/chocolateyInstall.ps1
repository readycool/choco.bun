$packageArgs = @{
  packageName    = "$env:ChocolateyPackageName"
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  url64bit       = 'https://github.com/oven-sh/bun/releases/download/bun-v1.1.35/bun-windows-x64.zip'
  checksum64     = '20b80e737bba7e6a893fc254894338aa12a795f5e8ccc55d7227d7820ee50d9c90244ffd507a1b775938a17a687aa0bb9ecf9a37893612a2be2b8ed98050a42a'
  checksumType64 = 'sha512'
}

Install-ChocolateyZipPackage @packageArgs
