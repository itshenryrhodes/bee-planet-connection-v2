Param([string]$Message = "Snapshot")
git rev-parse --is-inside-work-tree 1>$null 2>$null
if ($LASTEXITCODE -ne 0) { throw "Not a git repository." }
git add -A
git commit --allow-empty -m $Message | Out-Null
$stamp = (Get-Date -Format "yyyyMMdd-HHmmss")
$tag = "snapshot/$stamp"
git tag -a $tag -m "$Message @ $stamp"
Write-Host "Created tag $tag"