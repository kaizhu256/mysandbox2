uname
ls -la
echo $PWD

#!! powershell "Get-WindowsCapability -Online | Where-Object Name -like 'OpenSSH*'"
#!! powershell 'Add-WindowsCapability -Online -Name OpenSSH.Server~~~~0.0.1.0'

echo aa
ssh runneradmin@localhost dir
echo bb
