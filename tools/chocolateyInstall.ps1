$packageArgs = @{
  packageName    = "$env:ChocolateyPackageName"
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  url64bit       = 'https://github.com/oven-sh/bun/releases/download/bun-v1.1.29/bun-windows-x64.zip'
  checksum64     = '341282e9bd977ab88e05d261852d829d1eb83f39a5b8f0e37ab45ebbc81daf1793a4b542b1c7767b8bb5e515ee2ddb5c6983318c263223085ad2f9ea187e2891'
  checksumType64 = 'sha512'
}

Install-ChocolateyZipPackage @packageArgs
