$packageArgs = @{
  packageName    = "$env:ChocolateyPackageName"
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  url64bit       = 'https://github.com/oven-sh/bun/releases/download/bun-v1.1.34/bun-windows-x64.zip'
  checksum64     = '93b6b6053bfed41cb3bb1829419369e95f90c0e4dd052e6d6cd210c8e89f943bc8545f03237e0e6b05270de44a7428dd7160b9bfdc5d700202ddb31abdb153a2'
  checksumType64 = 'sha512'
}

Install-ChocolateyZipPackage @packageArgs
