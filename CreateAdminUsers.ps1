Import-Module ActiveDirectory

New-ADUser -Name "UserAccManager" -SamAccountName "UserAccManager" -Path "OU=MyAdmins, DC=yanaserv, DC=com" -AccountPassword(ConvertTo-SecureString "BSIT2am" -AsPlainText -Force) -Enable $true
New-ADUser -Name "UserHelpDesk" -SamAccountName "UserHelpDesk" -Path "OU=MyAdmins, DC=yanaserv, DC=com" -AccountPassword(ConvertTo-SecureString "BSIT2hd" -AsPlainText -Force) -Enable $true
New-ADUser -Name "UserGenAdmin" -SamAccountName "UserGenAdmin" -Path "OU=MyAdmins, DC=yanaserv, DC=com" -AccountPassword(ConvertTo-SecureString "BSIT2ga" -AsPlainText -Force) -Enable $true
New-ADUser -Name "UserResAdmin" -SamAccountName "UserResAdmin" -Path "OU=MyAdmins, DC=yanaserv, DC=com" -AccountPassword(ConvertTo-SecureString "BSIT2ra" -AsPlainText -Force) -Enable $true

Add-ADGroupMember "AccountManagers" UserAccManager
Add-ADGroupMember "HelpDesk" UserHelpDesk
Add-ADGroupMember "GeneralAdmins" UserGenAdmin
Add-ADGroupMember "ResourceAdmins" UserResAdmin
