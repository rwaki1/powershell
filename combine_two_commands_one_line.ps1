#Export only S/N and Hostname of VMs on Vmware Platform.
$files = Get-Content -Path C:\Rio_Tinto\PS\servers.csv
ForEach ( $file  in $files  )   {

$c = Get-VM -Name $file | Select Name
$a = Get-VM $file  |  %{(Get-View $_.Id).config.uuid}
$d = Get-VM -Name $file   |Sort | Get-View -Property @("Guest.GuestFullName", "Guest.IpAddress") |  Select -Property Name, 
       @{N="Running OS";E={$_.Guest.GuestFullName}},
       @{N="IP Address";E={@($_.Guest.IpAddress)}} 
Write-Host "$($c) ; $($d) ; $($a)  " 
    }