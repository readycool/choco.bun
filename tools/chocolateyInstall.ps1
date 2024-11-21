$packageArgs = @{
  packageName    = "$env:ChocolateyPackageName"
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  url64bit       = 'https://github.com/oven-sh/bun/releases/download/bun-v1.1.36/bun-windows-x64.zip'
  checksum64     = '735497fe81e147289ea20582be680c690f55bc21fc8f9f3d979c8f3d20afba673964e2c9d86a5678f42f2099b56e7b21da866217822e244c56ce927ab6720e05'
  checksumType64 = 'sha512'
}

Install-ChocolateyZipPackage @packageArgs
