$packageArgs = @{
  packageName    = "$env:ChocolateyPackageName"
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  url64bit       = 'https://github.com/oven-sh/bun/releases/download/bun-v1.1.42/bun-windows-x64.zip'
  checksum64     = 'a6b063a5a9a86e57f8a8d4b643557dbad9396e1cf1a0ef16a842b4cf5ef514262818cef9d4aa9fa2df4fc06e01c73cbf72b014bd28759662162bea08f560fac4'
  checksumType64 = 'sha512'
}

Install-ChocolateyZipPackage @packageArgs
