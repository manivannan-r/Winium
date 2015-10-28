﻿Set-StrictMode -Version Latest
$ErrorActionPreference = 'Stop'
#------------------------------

$root = $PWD

# .NET
cd ..\dotnet\scripts
& .\ci.ps1
if ($LASTEXITCODE -ne 0)
{
    Write-Output ".NET build failed. See console output"
    Exit $LASTEXITCODE
}