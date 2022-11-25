$Output= @()
    $names = Get-Content "D:\Servers.txt"
    foreach ($name in $names){
      if (Test-Connection -Delay 15 -ComputerName $name -Count 2 -ErrorAction SilentlyContinue){
       $Output+= "$name,up"
       Write-Host "$Name,up" -ForegroundColor Green
      }
      else{
        $Output+= "$name,down"
        Write-Host "$Name,down" -ForegroundColor Red
      }
    }
    $Output | Out-file "D:\result.csv"
