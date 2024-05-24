Import-Module ActiveDirectory

$domainL1="com"
$domainL2="yanaserv"
$domainL3="MyAdmins"

$groupGeneralAdmins="GeneralAdmins"
$groupResourceAdmins="ResourceAdmins"
$groupAccountManagers="AccountManagers"
$groupHelpDesk="HelpDesk"

New-ADGroup -Name $groupGeneralAdmins -GroupCategory Security -GroupScope Global -Path "OU=$domainL3, DC=$domainL2, DC=$domainL1"
New-ADGroup -Name $groupResourceAdmins -GroupCategory Security -GroupScope Global -ManagedBy $groupGeneralAdmins -Path "OU=$domainL3, DC=$domainL2, DC=$domainL1"
New-ADGroup -Name $groupAccountManagers -GroupCategory Security -GroupScope Global -ManagedBy $groupGeneralAdmins -Path "OU=$domainL3, DC=$domainL2, DC=$domainL1"
New-ADGroup -Name $groupHelpDesk -GroupCategory Security -GroupScope Global -ManagedBy $groupGeneralAdmins -Path "OU=$domainL3, DC=$domainL2, DC=$domainL1"
