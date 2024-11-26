$packageArgs = @{
  packageName    = "$env:ChocolateyPackageName"
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  url64bit       = 'https://github.com/oven-sh/bun/releases/download/bun-v1.1.37/bun-windows-x64.zip'
  checksum64     = 'd49374613fc7769a5e6bb2e33e6aae567d81a0edec2fa6cdb32f8e568a9fda5d67264f674b5f0a75c03179d7f95617b21fc03afcbed79a2226a0be48e138c29c'
  checksumType64 = 'sha512'
}

Install-ChocolateyZipPackage @packageArgs
