$packageArgs = @{
  packageName    = "$env:ChocolateyPackageName"
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  url64bit       = 'https://github.com/oven-sh/bun/releases/download/bun-v1.1.6/bun-windows-x64.zip'
  checksum64     = '8f0956b6a60f5a2b2ba08f7f5ea48c10aad27f212d6e4b664cecce482495ca3f744830159fccf2dc474895669bde1c431f32088feaae66edc5318bcc1ff8864b'
  checksumType64 = 'sha512'
}

Install-ChocolateyZipPackage @packageArgs
