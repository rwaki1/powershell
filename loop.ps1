#Export only Canonical and CN
$files = Get-Content -Path C:\Rio_Tinto\PS\servers.csv
For $file  in $files  {
$a = Get-VM $file | %{(Get-View $_.Id).config.uuid}
$b =  Get-VM  -Name $file  | Select Name 
  $c = $a += $b
  
 $c  | out-file  "C:\Rio_Tinto\PS\usslcvsp4.csv"
 #


    }