$packageArgs = @{
  packageName    = "$env:ChocolateyPackageName"
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  url64bit       = 'https://github.com/oven-sh/bun/releases/download/bun-v1.1.28/bun-windows-x64.zip'
  checksum64     = '2cb2477b9e26ca2988edd443664b4e2e4f06d5c12c0c0aa6d7bfca8688941b201b5c6d4585e7388a6f2dd4929bf16863ab3087fbed845e5e3b99cd5d519fa275'
  checksumType64 = 'sha512'
}

Install-ChocolateyZipPackage @packageArgs
