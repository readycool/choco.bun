$packageArgs = @{
  packageName    = "$env:ChocolateyPackageName"
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  url64bit       = 'https://github.com/oven-sh/bun/releases/download/bun-v1.1.12/bun-windows-x64.zip'
  checksum64     = 'f5bba01874916fb970b7751913e3c343ed76930dae7d27683c1bd177e1f5603a4a17f8165c920a9d9db5463686615cd7308fe3e63d618806747d36d01dc57729'
  checksumType64 = 'sha512'
}

Install-ChocolateyZipPackage @packageArgs
