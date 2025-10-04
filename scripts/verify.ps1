Param([string]$BaseUrl="http://127.0.0.1:1313")
$paths="/","/wiki/","/sops/","/alerts/","/tools/","/about/","/contact/","/blog/","/css/main.css","/img/logo.png","/img/logo.svg"
function Test-Head([string]$Url){try{(Invoke-WebRequest -Method Head -Uri $Url -UseBasicParsing -TimeoutSec 5).StatusCode}catch{if($_.Exception.Response){[int]$_.Exception.Response.StatusCode}else{-1}}}
$fail=$false; foreach($p in $paths){$u=($BaseUrl.TrimEnd("/"))+$p; $c=Test-Head $u; if($c -eq 200){"{0} -> {1}" -f $p,$c | Write-Host}else{"{0} -> {1}" -f $p,$c | Write-Host -ForegroundColor Yellow; $fail=$true}}
if($fail){Write-Host "`nOne or more checks did not return 200." -ForegroundColor Yellow; exit 1}else{Write-Host "`nAll checks returned 200."}