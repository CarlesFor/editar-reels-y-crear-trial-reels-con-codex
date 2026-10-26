[CmdletBinding()]
param(
    [string]$Destino = (Join-Path $env:USERPROFILE '.agents\skills'),

    [ValidateSet('reel-editor', 'trial-reels')]
    [string[]]$Skills = @('reel-editor', 'trial-reels')
)

Set-StrictMode -Version Latest
$ErrorActionPreference = 'Stop'

$destinoAbsoluto = [System.IO.Path]::GetFullPath($Destino)
$origenPaquete = Join-Path $PSScriptRoot 'skills'
$planInstalacion = @()

foreach ($nombre in ($Skills | Select-Object -Unique)) {
    $origen = Join-Path $origenPaquete $nombre
    if (-not (Test-Path -LiteralPath (Join-Path $origen 'SKILL.md') -PathType Leaf)) {
        throw "No se encuentra SKILL.md para la skill $nombre en $origen."
    }

    $destinoSkill = Join-Path $destinoAbsoluto $nombre
    $origenAbsoluto = [System.IO.Path]::GetFullPath($origen).TrimEnd('\', '/')
    $destinoNormalizado = [System.IO.Path]::GetFullPath($destinoSkill).TrimEnd('\', '/')
    if ($origenAbsoluto.Equals($destinoNormalizado, [System.StringComparison]::OrdinalIgnoreCase) -or
        $destinoNormalizado.StartsWith($origenAbsoluto + [System.IO.Path]::DirectorySeparatorChar, [System.StringComparison]::OrdinalIgnoreCase) -or
        $origenAbsoluto.StartsWith($destinoNormalizado + [System.IO.Path]::DirectorySeparatorChar, [System.StringComparison]::OrdinalIgnoreCase)) {
        throw 'El destino no puede coincidir con el origen ni estar dentro o por encima de su carpeta.'
    }

    if (Test-Path -LiteralPath $destinoSkill) {
        $elementoDestino = Get-Item -LiteralPath $destinoSkill
        if (-not $elementoDestino.PSIsContainer) {
            throw "El destino ya existe y no es una carpeta: $destinoSkill"
        }
        if ($elementoDestino.Attributes -band [System.IO.FileAttributes]::ReparsePoint) {
            throw "El destino es un enlace. Instala en una carpeta directa: $destinoSkill"
        }
    }

    $planInstalacion += [PSCustomObject]@{
        Nombre = $nombre
        Origen = $origenAbsoluto
        Destino = $destinoSkill
    }
}

$raizCopias = Join-Path ([System.IO.Path]::GetDirectoryName($destinoAbsoluto.TrimEnd('\', '/'))) 'copias-skills-reels'
$carpetaCopia = Join-Path $raizCopias ((Get-Date -Format 'yyyyMMdd-HHmmss') + '-' + [Guid]::NewGuid().ToString('N').Substring(0, 8))
New-Item -ItemType Directory -Path $destinoAbsoluto -Force | Out-Null

foreach ($elemento in $planInstalacion) {
    if (Test-Path -LiteralPath $elemento.Destino) {
        New-Item -ItemType Directory -Path $carpetaCopia -Force | Out-Null
        $copiaSkill = Join-Path $carpetaCopia $elemento.Nombre
        Copy-Item -LiteralPath $elemento.Destino -Destination $copiaSkill -Recurse
        Write-Output "Copia anterior: $copiaSkill"
    }

    foreach ($archivo in (Get-ChildItem -LiteralPath $elemento.Origen -Recurse -File)) {
        $rutaRelativa = $archivo.FullName.Substring($elemento.Origen.Length).TrimStart('\', '/')
        $archivoDestino = Join-Path $elemento.Destino $rutaRelativa
        New-Item -ItemType Directory -Path ([System.IO.Path]::GetDirectoryName($archivoDestino)) -Force | Out-Null
        Copy-Item -LiteralPath $archivo.FullName -Destination $archivoDestino -Force
    }

    Write-Output "Instalada: $($elemento.Nombre) -> $($elemento.Destino)"
}

Write-Output 'Busca las skills en /skills o escribiendo $. Si no aparecen, reinicia Codex.'
