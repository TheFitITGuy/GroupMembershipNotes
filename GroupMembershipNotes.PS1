#Created by Robbie Toumbs
##Designed to get information about users group membership and input membership info into the notes $

##loop the program for continous use
For ($i=0; $i -le 100; $i++){

    Write-Host "Warning this script will write information to the username you enter!" -ForegroundCo$
    Pause
        Import-Module ActiveDirectory
    #variable set to equal the username the operator inputs
        $Username = Read-Host "Username"
        Write-Host " "
        Write-Output "Getting Group Memberships for $UserName . Please wait"
    $date=get-date
    ##Get group memebrships for user | selects the membership name | sorts by Group Name | Sorts A t$
        $membership = Get-ADPrincipalGroupMembership $UserName | Select-Object -Property Name | Sort$
    [string]$member = "Removed Group Membership on",[string]$date,"`r`n`n",[string]$membership.name
    Set-ADUser -Identity $Username -Replace @{info=[string]$member}

    $member | Out-File "$env:USERPROFILE\Desktop\group.txt"



Pause
Clear
}
