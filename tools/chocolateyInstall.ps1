$packageArgs = @{
  packageName    = "$env:ChocolateyPackageName"
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  url64bit       = 'https://github.com/oven-sh/bun/releases/download/bun-v1.1.22/bun-windows-x64.zip'
  checksum64     = '49f0458f35cdf4cbd7005ee6732b4286592eaf507e332bf52d36729aeab61d8155ef1c37d3c0dc598fe25a7d17ac59047fa96c8853b31339d7dfa746d302d164'
  checksumType64 = 'sha512'
}

Install-ChocolateyZipPackage @packageArgs
