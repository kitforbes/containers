[CmdletBinding()]
param (
    [Parameter(Mandatory)]
    [ValidateSet("ansible-playbook")]
    [String]
    $Container
)

$ErrorActionPreference = "Stop"

docker build `
    --tag "kitforbes/${Container}:latest" `
    --file "${PSScriptRoot}/${Container}/Containerfile"  `
    "${PSScriptRoot}/${Container}"

Write-Output ""
docker images "kitforbes/${Container}"
