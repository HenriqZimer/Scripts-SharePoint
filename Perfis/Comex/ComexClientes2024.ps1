$UserId = ""
$UserEmail = $env:USERNAME + "@trust.group"
$SiteId = "{b0538071-d508-4de6-a461-54cf8e4816d0}"
$isSiteAdmin = "1"
$WebId = "{87bcb753-c805-42d9-bad0-aa9bc035f0e8}"
$WebTitle = "Trust Group - Principal"
$WebTemplate = "64"
$WebLogoUrl = "/sites/TrustGroup19/_api/GroupService/GetGroupImage?id='d22aa4cd-10b7-4dbb-9ff0-011c010f5f2e'&hash=638334216242572433"
$webUrl = "https://trustlog.sharepoint.com/sites/TrustGroup19"
$onPrem = "0"
$LibraryType = "3"
$ListId = "85411b6e-d9b7-42ee-b17f-d97377d6f1f5"
$ListTitle = "Comex Clientes 2024"
$Scope = "OPENLIST"

Do {
    $ODStatus = Get-Process onedrive -ErrorAction SilentlyContinue
   
    If ($ODStatus) {
 
        $odopen = "odopen://sync/?userId=" + $UserId + "&userEmail=" + $UserEmail + "&isSiteAdmin=" + $isSiteAdmin + "&siteId=" + $SiteId + "&webId=" + $WebId + "&webTitle=" + $WebTitle + "&webTemplate=" + $WebTemplate + "&webLogoUrl=" + $WebLogoUrl + "&webUrl=" + $webUrl + "&onPrem=" + $onPrem + "&libraryType=" + $LibraryType + "&listId=" + $ListId + "&listTitle=" + $ListTitle + "&scope=" + $Scope

        Start-Process $odopen
    }
}
Until ($ODStatus)