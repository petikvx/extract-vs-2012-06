@echo off
del temp
echo Compiling New Security Policy ...
echo [Version] >> temp
echo signature="$CHICAGO$" >> temp
echo Revision=1 >> temp
echo [Profile Description] >> temp
echo Description=Default Security Settings. (Windows 2000 Professional)  >> temp
echo [System Access] >> temp
echo MinimumPasswordAge = 0 >> temp
echo MaximumPasswordAge = 42 >> temp
echo MinimumPasswordLength = 0 >> temp
echo PasswordComplexity = 0 >> temp
echo PasswordHistorySize = 0 >> temp
echo LockoutBadCount = 0 >> temp
echo RequireLogonToChangePassword = 0 >> temp
echo ClearTextPassword = 0 >> temp
echo [Event Audit] >> temp
echo AuditSystemEvents = 0 >> temp
echo AuditLogonEvents = 0 >> temp
echo AuditObjectAccess = 0 >> temp
echo AuditPrivilegeUse = 0 >> temp
echo AuditPolicyChange = 0 >> temp
echo AuditAccountManage = 0 >> temp
echo AuditProcessTracking = 0 >> temp
echo AuditDSAccess = 0 >> temp
echo AuditAccountLogon = 0 >> temp
echo [Registry Values] >> temp
echo machine\system\currentcontrolset\services\netlogon\parameters\signsecurechannel=4,1 >> temp
echo machine\system\currentcontrolset\services\netlogon\parameters\sealsecurechannel=4,1 >> temp
echo machine\system\currentcontrolset\services\netlogon\parameters\requirestrongkey=4,0 >> temp
echo machine\system\currentcontrolset\services\netlogon\parameters\requiresignorseal=4,0 >> temp
echo machine\system\currentcontrolset\services\netlogon\parameters\disablepasswordchange=4,0 >> temp
echo machine\system\currentcontrolset\services\lanmanworkstation\parameters\requiresecuritysignature=4,0 >> temp
echo machine\system\currentcontrolset\services\lanmanworkstation\parameters\enablesecuritysignature=4,1 >> temp
echo machine\system\currentcontrolset\services\lanmanworkstation\parameters\enableplaintextpassword=4,0 >> temp
echo machine\system\currentcontrolset\services\lanmanserver\parameters\requiresecuritysignature=4,0 >> temp
echo machine\system\currentcontrolset\services\lanmanserver\parameters\enablesecuritysignature=4,0 >> temp
echo machine\s