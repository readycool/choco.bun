$packageArgs = @{
  packageName    = "$env:ChocolateyPackageName"
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  url64bit       = 'https://github.com/oven-sh/bun/releases/download/bun-v1.1.4/bun-windows-x64.zip'
  checksum64     = '0ed1a58332cf302d63f712dcbf9ee49eb08e61fabf39ea089e78ea51e64da679bb8208be90034639aebdf411c0dad72e6ca5a88e47962f3624939ec0855233b9'
  checksumType64 = 'sha512'
}

Install-ChocolateyZipPackage @packageArgs
