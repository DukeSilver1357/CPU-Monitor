$cpuhistory=0
$t=0
do {
    if ($(get-counter "\Processor(_Total)\% Idle Time").countersamples.cookedvalue -lt 25){
      $cpuhistory++
}
    $t++
    Start-Sleep -Seconds 10
} while ($t -lt 30)

if ($cpuhistory -ge 24) {
    Write-Host("True")
}
else {
    Write-Host("False")
}
