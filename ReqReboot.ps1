$NodeNames = "SRVSESREC","SRVBOABENCH3","SRVBOABENCH4","SRVKKAPP","SRVHAZINE2","SRVAPPDEBUG ","SRVFWBRANCH1","SRVINSPECTOR","STLQLIKVIEWTEST"

foreach($name in $NodeNames)
{
    Invoke-Command -ComputerName $name -ScriptBlock { Invoke-WmiMethod -Namespace "ROOT\ccm\ClientSDK" -Class CCM_ClientUtilities -Name DetermineIfRebootPending }
}
