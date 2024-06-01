$packageArgs = @{
  packageName    = "$env:ChocolateyPackageName"
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  url64bit       = 'https://github.com/oven-sh/bun/releases/download/bun-v1.1.11/bun-windows-x64.zip'
  checksum64     = '40609c878091d787b095c8896203f6a1cf98983c6c5e8a062262edb902426adb2bc5931775dd58d505e693f463715aac7e59b7a79a6c68bc07daed39d58d3eea'
  checksumType64 = 'sha512'
}

Install-ChocolateyZipPackage @packageArgs
