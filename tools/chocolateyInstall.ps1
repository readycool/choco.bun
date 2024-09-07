$packageArgs = @{
  packageName    = "$env:ChocolateyPackageName"
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  url64bit       = 'https://github.com/oven-sh/bun/releases/download/bun-v1.1.27/bun-windows-x64.zip'
  checksum64     = 'd47da9980fd76e42e63d1449215fe78b3c7f896b3f9923d255aee64f51f79b3266987caf271db781a7cc8bbae97b3a77b10a57f91b1184d3e2cc709e61c16f95'
  checksumType64 = 'sha512'
}

Install-ChocolateyZipPackage @packageArgs
