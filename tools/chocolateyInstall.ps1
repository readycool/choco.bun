$packageArgs = @{
  packageName    = "$env:ChocolateyPackageName"
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  url64bit       = 'https://github.com/oven-sh/bun/releases/download/bun-v1.1.16/bun-windows-x64.zip'
  checksum64     = '9b3d0ab767d1deb6626e795c0c89d4d4241f380a994957664769b30f508a4f3bc27d11a0f3d1f33d8ce6a537ac2d8818af13461707eb24ec3fca4cf7cbfbbc57'
  checksumType64 = 'sha512'
}

Install-ChocolateyZipPackage @packageArgs
