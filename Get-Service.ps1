// Uzak sunucudaki Windows Servisini (FTP) Filtrelemesi 

$CN = "SRVWINSERVICES3";

Invoke-Command -ComputerName $CN -ScriptBlock { Get-Service | Where {$_.Name -like "*FTP*" } }
