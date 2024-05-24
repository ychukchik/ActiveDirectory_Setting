Import-Module ActiveDirectory

$OU = Get-ADOrganizationalUnit -SearchBase "DC=yanaserv,DC=com" -SearchScope Subtree -Filter *
ForEach($ou in $OU)
{
  if($ou.Name -eq $args[0])
  {
    $Users = Search-ADAccount -SearchBase $ou -UsersOnly -LockedOut
    foreach ($user in $Users)
    {
      Unlock-ADAccount -Identity $($user.Name)
      Write-Host $user.Name " unlocked"
    }
  }
}
