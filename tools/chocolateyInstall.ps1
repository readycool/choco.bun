$packageArgs = @{
  packageName    = "$env:ChocolateyPackageName"
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  url64bit       = 'https://github.com/oven-sh/bun/releases/download/bun-v1.1.13/bun-windows-x64.zip'
  checksum64     = '65334399533deda5cf7cf38d2bde2f1eb8a94257f85021307884f898582853fe2849eaaf586b69c1acdd534dccac0e8e4c748226931f63869acacaa439a6364b'
  checksumType64 = 'sha512'
}

Install-ChocolateyZipPackage @packageArgs
