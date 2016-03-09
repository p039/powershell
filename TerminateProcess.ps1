<#
.SYNOPSIS
    1. Sort python processes by StartDate and get the list excluding first 3 (the running app).
    2. Kill python processes which are running longer than 5 minutes.
#>

$processObjects = Get-Process python | Sort {$_.StartTime}  | Select -Skip 3

foreach ($proc in $processObjects)
 {
    if ($proc.StartTime -lt (Get-Date).AddMinutes(-5))
    {
        $proc.Kill()
    }
}