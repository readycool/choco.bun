$packageArgs = @{
  packageName    = "$env:ChocolateyPackageName"
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  url64bit       = 'https://github.com/oven-sh/bun/releases/download/bun-v1.1.18/bun-windows-x64.zip'
  checksum64     = 'a972744443609dedefa6fdd9cc375f4da39379db21b46ba52bc20fe2575f72e5a0b9c3aa6ec387bb9df552d9beeae4000830dac0e7e5e1de6fa9d01961abb6bc'
  checksumType64 = 'sha512'
}

Install-ChocolateyZipPackage @packageArgs
