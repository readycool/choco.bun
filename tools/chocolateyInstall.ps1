$packageArgs = @{
  packageName    = "$env:ChocolateyPackageName"
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  url64bit       = 'https://github.com/oven-sh/bun/releases/download/bun-v1.1.31/bun-windows-x64.zip'
  checksum64     = '9807e98be000d9697013dd86d5a97c4607968a563aedf8a7be1cb6c2d40aa6aad4daa1ff0c4983bb26e2a8140b736738e968ce7e113701fdadc297e82ecdf5db'
  checksumType64 = 'sha512'
}

Install-ChocolateyZipPackage @packageArgs
