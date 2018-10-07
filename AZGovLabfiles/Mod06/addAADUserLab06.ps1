1  # Lab 06 script - Using Microsoft Azure Active Directory Module for Windows PowerShell 
2  
 
3  New-MsolUser -UserPrincipalName john@<#Copy your Azure Directory domain name here#>.onmicrosoft.com -DisplayName 'Mario Ledford' -FirstName 'John' -LastName 'Garland' -Password '@Pa55w.rd' -ForceChangePassword $false -UsageLocation 'US' 
4  
 
5  New-MsolGroup -DisplayName 'Azure team' -Description 'Adatum Azure team users' 
6  
 
7  $group = Get-MsolGroup | Where-Object DisplayName -eq 'Azure team' 
8  
 
9  $user = Get-MsolUser | Where-Object DisplayName -eq 'John Garland' 
10  
 
11  Add-MsolGroupMember -GroupObjectId $group.ObjectId -GroupMemberType 'User' -GroupMemberObjectId $user.ObjectId 
12  
 
13  Get-MsolGroupMember -GroupObjectId $group.ObjectId 
