function get-localadmin {  
    param ($strcomputer)  
    $admins = Gwmi win32_groupuser –computer $strcomputer   
    $admins = $admins |? {$_.groupcomponent –like '*"Administrators"'}  
  
    $admins |% {  
        $_.partcomponent –match “.+Domain\=(.+)\,Name\=(.+)$” > $nul  
        $matches[1].trim('"') + “\” + $matches[2].trim('"')  
    }  
}

$servers = "SRVBOATEST1","SRVBOATEST2"
$OFS = "`r`n"
foreach($name in $servers){
    $OFS + "Server Name:" + $name | Out-File -Append D:\TestAdminGroup\administrator.txt
    get-localadmin $name | Out-File -Append D:\TestAdminGroup\administrator.txt
}
