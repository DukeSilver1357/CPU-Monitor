$cpuhistory=0
$t=0
do {
    if ($(get-counter "\Processor(_Total)\% Idle Time").countersamples.cookedvalue -lt 95.0){
      $cpuhistory++
}
    $t++
    Start-Sleep -Seconds 10
} while ($t -lt 30)

if ($cpuhistory -ge 24) {
    Write-Host($cpuhistory * 10 / 60)
}
else {
    Write-Host("0")
}
