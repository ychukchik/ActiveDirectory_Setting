Import-Module ActiveDirectory

$domenL1="com"
$domenL2="yanaserv"
$domenL3="MyUsers"

New-ADOrganizationalUnit -Name Customers -Path "DC=$domenL2, DC=$domenL1"
New-ADOrganizationalUnit -Name Admins -Path "DC=$domenL2, DC=$domenL1"
New-ADOrganizationalUnit -Name Categories -Path "DC=$domenL2, DC=$domenL1"
New-ADOrganizationalUnit -Name Hits -Path "OU=$domenL3, DC=$domenL2, DC=$domenL1"
New-ADOrganizationalUnit -Name Sales -Path "OU=$domenL3, DC=$domenL2, DC=$domenL1"
