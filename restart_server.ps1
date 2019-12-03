#type 1

$pc = "SRVZLOCK1","SRVSERVICES4","SRVAAUIP","SRVATMU2"

foreach($name in $pc){
  shutdown /r /m \\$name
}


#type 2

$pcNames = "DRCATMAPP","DRCSSIGNTAX","SPLRTNS2","SRVAPPDEBUG","SRVBOABENCH3","SRVBOABENCH4","SRVCBDEV","SRVCBPREP","SRVPSTEST02","STLQLIKVIEWTEST"
foreach($name in $pcNames)
{
    #ping $name
    Restart-Computer –ComputerName $name
}
