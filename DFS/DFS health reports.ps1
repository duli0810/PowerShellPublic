<# 
 
 Run DFS health reports and email results
 
 Author: Nathan Thomas
 Date: 02/23/2017
 
#>
 
#requires -version 2 
 
# Vars
$Date = Get-Date -UFormat "%m-%d-%Y"
$Domain = "yourDomain.com"
$Namespace = "yourDFSNamespace"
$ReplGroup = @("replicationGroup1", "replicationGroup2", "replicationGroup3", "replicationGroup4")
$RefMember = @("referenceServer1", "referenceServer2", "referenceServer3", "referenceServer4")
$ReportDir = "C:\DFSReports"
$MailServer = "yourExchangeServer.yourDomain.com"
$MailTo = "support@yourDomain.com" 
$MailFrom = "noreply@yourDomain.com"
$MailAuthUser = "noreply"
$MailAuthPass = ConvertTo-SecureString "yourPasswordHere" -AsPlainText -Force
$MailAuth = New-Object System.Management.Automation.PSCredential($MailAuthUser, $MailAuthPass);
$MailSubject = "Daily DFS-R Health Report"
$MailBody = "Greetings Support,<br /><br />A pleasure to see you again as always, and I must say, you certainly are looking handsome today.<br /><br />By the way, here is your daily DFS-R Health Report for <strong>$Date</strong>.<br /><br />Have a positive and productive day,<br />Your friendly neighborhood shell script"
$ReportFiles = @()
$i = 0

foreach ($item in $ReplGroup) {
	# Generate report 
	DfsrAdmin.exe Health New /RgName:$Domain\$Namespace\$item /RefMemName:$Domain\$($RefMember[$i]) /RepName:$($ReportDir+"\Health-"+$Domain+"_"+$Namespace+"_"+$item+"-"+$Date) /FsCount:true

	# Push report file paths into array
	$ReportFiles += $($ReportDir+"\Health-"+$Domain+"_"+$Namespace+"_"+$item+"-"+$Date+".html")

 	$i++
}

# Email report
Send-MailMessage -From $MailFrom -To $MailTo -SmtpServer $MailServer -Subject $MailSubject -Body $MailBody -BodyAsHtml -Credential $MailAuth -UseSsl -Port 587 -Attachments $ReportFiles

# For god's sake man, clean up after yourself. Geeyodd wuttaya think disk space is free er sumthin?
Remove-Item $ReportFiles
Remove-Item $($ReportFiles -replace '.html$','.xml')

# https://www.paperstreetonline.com/2017/03/02/powershell-script-generate-dfs-r-health-reports-and-email-them/