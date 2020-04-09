$comment = '*'
$comment += '5822# fedarb-odilekci: Debit kart PIN değişiminde alınan process hata mesajı düzgün verilmiştir.'
$comment += '*'

$maxCommentLength = 130 #comment karakter sayısı max değeridir.


$baseUrl = "http://srvtfs:8080/tfs/KT/_apis/tfvc/changesets?maxCommentLength=$maxCommentLength&api-version=1.0"         
$changesets = (Invoke-RestMethod -Uri $baseUrl -Method Get -UseDefaultCredential).value|where({$_.comment -like $comment})
$changesetResults = @()
foreach($changeset in $changesets){

    $customObject = new-object PSObject -property @{
          "changesetId" = $changeset.changesetId
          "author" = $changeset.author.uniqueName
          "checkedInBy" = $changeset.checkedInBy.uniqueName
          "createdDate" = $changeset.createdDate
          "comment" = $changeset.comment
        } 

    $changesetResults += $customObject      
}
$changesetResults | Select `
                changesetId, 
                author, 
                checkedInBy,
                createdDate,
                comment #|export-csv -Path C:\Changesets.csv -NoTypeInformation
