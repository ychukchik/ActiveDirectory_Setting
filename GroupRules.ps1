dsacls.exe "OU=MyAdmins DC=yanaserv, DC=com" /I:T /G "yanaserv\AccountManagers:CCDC;user"
dsacls.exe "OU=MyAdmins DC=yanaserv, DC=com" /I:S /G "yanaserv\AccountManagers:RCWDWO;;user"
dsacls.exe "OU=MyAdmins DC=yanaserv, DC=com" /I:S /G "yanaserv\AccountManagers:CALO;;user"
dsacls.exe "OU=MyAdmins DC=yanaserv, DC=com" /I:S /G "yanaserv\AccountManagers:RPWP;userAccountControl;user"
dsacls.exe "OU=MyAdmins DC=yanaserv, DC=com" /I:S /G "yanaserv\AccountManagers:RPWP;pwdLastSet;user"
dsacls.exe "OU=MyAdmins DC=yanaserv, DC=com" /I:S /G "yanaserv\HelpDesk:RPWP;lockoutTime;user"
dsmod group "cn=Administrators, cn=Builtin, DC=yanaserv, DC=com" -addmbr "cn=GeneralAdmins, OU=MyAdmins, DC=yanaserv, DC=com"
dsmod group "cn=IIS_IUSRS, cn=Builtin, DC=yanaserv, DC=com" -addmbr "cn=ResourceAdmins, OU=MyAdmins, DC=yanaserv, DC=com"