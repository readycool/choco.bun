$packageArgs = @{
  packageName    = "$env:ChocolateyPackageName"
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  url64bit       = 'https://github.com/oven-sh/bun/releases/download/bun-v1.1.38/bun-windows-x64.zip'
  checksum64     = '234d8531564e4c36b57a132a06953392979f879f814ab5d20c0e5d7d26beeefdeb629611ec9768fbe2873f1c1d9f0bbadd47ed42158c7f5dbb9c7c61e03f997d'
  checksumType64 = 'sha512'
}

Install-ChocolateyZipPackage @packageArgs
