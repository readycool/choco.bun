$packageArgs = @{
  packageName    = "$env:ChocolateyPackageName"
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  url64bit       = 'https://github.com/oven-sh/bun/releases/download/bun-v1.1.25/bun-windows-x64.zip'
  checksum64     = 'd56ef849f4eee18b77a035e240e620eca006b837a492fa06a5db1653fc825c01cf7bb7ddd123e787bd62e427772dd9e951b05fa30d5975d9342b5c8051344479'
  checksumType64 = 'sha512'
}

Install-ChocolateyZipPackage @packageArgs
