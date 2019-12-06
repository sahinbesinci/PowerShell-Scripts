ping -t boaprep | Foreach {"{0} - {1}" -f (Get-Date),$_}  >> D:\ping.txt
