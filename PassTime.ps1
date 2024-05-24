Import-module ActiveDirectory

$daysLim = [int]($args[0])
$UserList=Search-ADAccount -AccountExpiring -TimeSpan (New-TimeSpan -Days $daysLim)
if($UserList)
{
	foreach($User in $UserList)
	{
		$expireDate=$User.AccountExpirationDate
		$currentDate=get-Date
		$daysLeft = $expireDate - $currentDate
		write-host "[Searcher] " $User.Name ": time left until password expires " $daysLeft.Days " days!"
	}
}
else
{
	write-host "[Searcher] There is no user whose password is about to expire!"
}
