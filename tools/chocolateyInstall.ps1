$packageArgs = @{
  packageName    = "$env:ChocolateyPackageName"
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  url64bit       = 'https://github.com/oven-sh/bun/releases/download/bun-v1.1.41/bun-windows-x64.zip'
  checksum64     = '6aa606c3c040cf1fe94e6eae9ce345e8a4d0fdd6b1f12ee1e6d267ed484f06e5f076bf15e40b75d4fff34104e938ff01bb2fdeb5364038f070cc236f315bfd94'
  checksumType64 = 'sha512'
}

Install-ChocolateyZipPackage @packageArgs
