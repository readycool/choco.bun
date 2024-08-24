$packageArgs = @{
  packageName    = "$env:ChocolateyPackageName"
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  url64bit       = 'https://github.com/oven-sh/bun/releases/download/bun-v1.1.26/bun-windows-x64.zip'
  checksum64     = '3b0e3b5bc4116950203c1e9fe046364b1ed123c9b21e8fb638d836f3a07e5c55fc9c0bccd887459da5a3601d7b25de959e9e9fa09b5135b12d3a3c019bfadc1f'
  checksumType64 = 'sha512'
}

Install-ChocolateyZipPackage @packageArgs
