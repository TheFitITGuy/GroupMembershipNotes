##Created by Robbie Toumbs 
##Designed to get information about users group membership before removal 

#loop the program for continous use 
For ($i=0; $i -le 100; $i++)
{

	Import-Module ActiveDirectory 
    #variable set to equal the username the operator inputs 
	$Username = Read-Host "Username"
	Write-Host " " 
	Write-Output "Getting Group Memberships for $UserName . Please wait"  
    #Get group memebrships for user | selects the membership name | sorts by Group Name | Sorts A to Z | Outputs file to running users desktop in a text file
	Get-ADPrincipalGroupMembership $UserName | Select-Object -Property Name | Sort-Object -Property Name | FT -A | Out-File "$env:USERPROFILE\Desktop\group.txt"

Pause
Clear
}
