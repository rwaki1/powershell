#Export only Canonical and CN
  Get-Content C:\bObbUs\tmp\AD\server_list.txt |
  Get-ADComputer -Properties * |
  
  Select-Object CanonicalName, CN | Export-CSV "C:\bObbUs\tmp\AD\ADComputersCN4.CSV" -NoTypeInformation -Encoding UTF8
