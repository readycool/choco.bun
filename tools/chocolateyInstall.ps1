$packageArgs = @{
  packageName    = "$env:ChocolateyPackageName"
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  url64bit       = 'https://github.com/oven-sh/bun/releases/download/bun-v1.1.19/bun-windows-x64.zip'
  checksum64     = '174cc03fb02f818b3a60026b3e77b3ddedfa9c1862524a3e5e60be8e61bbd520d3a682720d5f3f15e8fa4ac8523c96b340c647e2386097fcb32d210a7cbf445a'
  checksumType64 = 'sha512'
}

Install-ChocolateyZipPackage @packageArgs
