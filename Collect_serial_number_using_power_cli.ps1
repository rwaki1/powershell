#Export only Canonical and CN
$files = Get-Content -Path C:\Rio_Tinto\PS\servers.txt 

  Get-VM $files | %{(Get-View $_.Id).config.uuid} | out-file  "C:\Rio_Tinto\PS\usslcvsp4.txt" 

    