param([switch]$Todo)

# Sección 11.2: busca datos que no deben publicarse. Por defecto revisa lo preparado para el commit (git add);
# con -Todo revisa todo el repositorio. Termina con código 1 si encuentra algo.

$raiz = Split-Path $PSScriptRoot -Parent
Push-Location $raiz
try {
    if ($Todo) {
        $archivos = Get-ChildItem -File -Recurse | Where-Object { $_.FullName -notmatch '[\\/]\.git[\\/]' } |
            ForEach-Object { Resolve-Path -Relative $_.FullName }
    } else {
        $archivos = git diff --cached --name-only --diff-filter=ACMR
        if ($LASTEXITCODE -ne 0) { throw 'No es un repositorio git; use -Todo para revisar la carpeta.' }
    }

    $patrones = [ordered]@{
        'Contraseña'     = '(?i)\b(password|passwd|pwd|contraseña|clave)\b\s*[:=]\s*\S+'
        'Token o llave'  = '(?i)\b(api[_-]?key|token|secret|client[_-]?secret)\b\s*[:=]\s*\S{6,}'
        'Authorization'  = '(?i)\bauthorization:\s*\S+'
        'Bearer'         = '(?i)\bbearer\s+[A-Za-z0-9._~+/-]{10,}'
        'Cookie'         = '(?i)\b(set-)?cookie:\s*\S+'
        'Llave privada'  = '-----BEGIN [A-Z ]*PRIVATE KEY-----'
        'Llave AWS'      = '\bAKIA[0-9A-Z]{16}\b'
        'Correo'         = '\b[\w.+-]+@[\w-]+\.[\w.-]+\b'
    }
    $texto = '\.(md|txt|csv|json|ya?ml|xml|html?|js|ts|py|ps1|sh|conf|ini|env|log|har)$'
    $revisar = 'scripts[\\/]revisar-publicacion\.ps1$'

    $alertas = foreach ($a in $archivos) {
        if ($a -match $revisar -or -not (Test-Path $a -PathType Leaf)) { continue }
        if ($a -notmatch $texto) {
            # Imágenes, PDF y Office no se pueden revisar con texto: se recuerda anonimizarlos a mano
            if ($a -match '\.(png|jpe?g|gif|pdf|docx?|xlsx?|pptx?)$' -and $a -match 'evidencias') {
                [pscustomobject]@{ Tipo = 'Revisar a mano'; Archivo = $a; Linea = '-'; Texto = 'Evidencia binaria' }
            }
            continue
        }
        foreach ($tipo in $patrones.Keys) {
            Select-String -Path $a -Pattern $patrones[$tipo] -Encoding utf8 | ForEach-Object {
                $linea = $_.Line.Trim()
                [pscustomobject]@{ Tipo = $tipo; Archivo = $a; Linea = $_.LineNumber
                    Texto = $linea.Substring(0, [Math]::Min(80, $linea.Length)) }
            }
        }
    }

    if ($alertas) {
        $alertas | Format-Table -AutoSize -Wrap
        $graves = @($alertas | Where-Object Tipo -ne 'Revisar a mano').Count
        if ($graves) { Write-Output "$graves coincidencias por revisar antes de publicar."; exit 1 }
        Write-Output 'Sin datos sensibles en texto; revise a mano las evidencias binarias listadas.'
    } else {
        Write-Output 'Sin coincidencias.'
    }
} finally {
    Pop-Location
}
