$password = Read-Host -Prompt "Enter Password for user postgres"
$env:PGPASSWORD = $password
$psqlPath = "C:\Program Files\PostgreSQL\17\bin\psql.exe"
$dbName = "aladdin_db"
$dbUser = "postgres"

Write-Host "Running Vehicles Migration..."
& $psqlPath -U $dbUser -d $dbName -f "c:\Users\PROGSM\Desktop\Aladdin correction avec GEMINI vs code\aladdin-annonce-algerie-hub-master\_archive\migrate-vehicules-equipements-all-langs-FIXED.sql"

if ($LASTEXITCODE -eq 0) {
    Write-Host "Vehicles Migration Successful." -ForegroundColor Green
} else {
    Write-Host "Vehicles Migration Failed." -ForegroundColor Red
}

Write-Host "Running Informatique Migration..."
& $psqlPath -U $dbUser -d $dbName -f "c:\Users\PROGSM\Desktop\Aladdin correction avec GEMINI vs code\aladdin-annonce-algerie-hub-master\_archive\migrate-informatique-electronique-all-langs-FIXED.sql"

if ($LASTEXITCODE -eq 0) {
    Write-Host "Informatique Migration Successful." -ForegroundColor Green
} else {
    Write-Host "Informatique Migration Failed." -ForegroundColor Red
}

$env:PGPASSWORD = $null
Write-Host "Done."
