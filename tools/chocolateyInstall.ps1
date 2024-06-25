$packageArgs = @{
  packageName    = "$env:ChocolateyPackageName"
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  url64bit       = 'https://github.com/oven-sh/bun/releases/download/bun-v1.1.17/bun-windows-x64.zip'
  checksum64     = 'e6522a5d71dc87b0d87095f5def8b794c1cbef2d5bc6136212fbdb1b5116df9f278b4b522ffdb47e4bf831f760d5281355d59738e3e55ba9c34a4108197184ab'
  checksumType64 = 'sha512'
}

Install-ChocolateyZipPackage @packageArgs
