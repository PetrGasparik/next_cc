flutter build web --base-href "/next_cc/"
Copy-Item ".\build\web\*" ".\docs\" -Force -Recurse 
$datetime = Get-Date -Format "yyMMdd-HHmm"  
git add --all
git commit -m "Update $datetime"
git push