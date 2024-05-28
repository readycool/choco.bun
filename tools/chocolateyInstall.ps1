$packageArgs = @{
  packageName    = "$env:ChocolateyPackageName"
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  url64bit       = 'https://github.com/oven-sh/bun/releases/download/bun-v1.1.10/bun-windows-x64.zip'
  checksum64     = '8614825a8928b84fddea14bf7d56c35da8154197878102cfaa7c0401c5be4d7f8a8019b6062d8c347f6bc4b10546fa0f3355a2163edba177e8e66ef790146b5f'
  checksumType64 = 'sha512'
}

Install-ChocolateyZipPackage @packageArgs
