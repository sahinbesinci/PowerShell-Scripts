#deploy
$source = '\\appfiles\yourbankcms\Dev\SeninBankan'
$dest = '\d$\WebSites\YourBankCMS'
$exclude = @('*.pdb','*.config')
$srvNames = "srvwebdev" , "srvwebdev2"
foreach($name in $srvNames)
{
$name 
    Invoke-Command -ComputerName $name -ScriptBlock { Stop-WebAppPool -Name "YourBankCMS" }
    Start-Sleep -s 15
    if($name -eq "srvwebdev"){
        #backup
        $date = (Get-Date).ToString("yyyyMMddhhmm")
        $src ="D:\Websites\YourBankCMS\*"
        $dst = "D:\Websites\backup\$date\"
        if (-Not (Test-Path '\\srvwebdev\d$\WebSites\backup\$date\'))
        {
             md -path \\srvwebdev\d$\Websites\backup\$date\
        }
        Invoke-Command -ComputerName $name -ScriptBlock { Copy-Item -path $args[0] -Recurse -Destination $args[1] -Force -Container } -ArgumentList $src,$dst
    }
    $path = "\\" + $name + $dest
    Get-ChildItem $source -Recurse -Exclude $exclude | Copy-Item -Destination {Join-Path $path $_.FullName.Substring($source.length)} -Force
    Invoke-Command -ComputerName $name -ScriptBlock { Start-WebAppPool -Name "YourBankCMS" }
}
