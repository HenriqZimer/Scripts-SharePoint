$UserId = ""
$UserEmail = $env:USERNAME + "@trust.group"
$SiteId = "{b0538071-d508-4de6-a461-54cf8e4816d0}"
$isSiteAdmin = "1"
$WebId = "{87bcb753-c805-42d9-bad0-aa9bc035f0e8}"
$WebTitle = ""
$WebTemplate = "64"
$WebLogoUrl = "/sites/TrustGroup19/_api/GroupService/GetGroupImage?id='d22aa4cd-10b7-4dbb-9ff0-011c010f5f2e'&hash=638334216242572433"
$webUrl = "https://trustlog.sharepoint.com/sites/TrustGroup19"
$onPrem = "0"
$LibraryType = "3"
$ListId = "dfa5c48b-8f10-4b24-a251-03be8c58ed45"
$ListTitle = ""
$FolderId = "2f13f991-907c-4a73-af44-eab317a94245"
$FolderName = "MARKETING"
$FolderUrl = "https://trustlog.sharepoint.com/sites/TrustGroup19/Marketing/MARKETING"
$Scope = "OPENFOLDER"

Do {
    $ODStatus = Get-Process onedrive -ErrorAction SilentlyContinue
   
    If ($ODStatus) {
 
        $odopen = "odopen://sync/?userId=" + $UserId + "&userEmail=" + $UserEmail + "&isSiteAdmin=" + $isSiteAdmin + "&siteId=" + $SiteId + "&webId=" + $WebId + "&webTitle=" + $WebTitle + "&webTemplate=" + $WebTemplate + "&webLogoUrl=" + $WebLogoUrl + "&webUrl=" + $webUrl + "&onPrem=" + $onPrem + "&libraryType=" + $LibraryType + "&listId=" + $ListId + "&listTitle=" + $ListTitle + "&folderId=" + $FolderId + "&folderName=" + $FolderName + "&folderUrl=" + $FolderUrl + "&scope=" + $Scope

        Start-Process $odopen
    }
}
Until ($ODStatus)
