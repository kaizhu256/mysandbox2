uname
ls -la
echo $PWD

#!! powershell "Get-WindowsCapability -Online | Where-Object Name -like 'OpenSSH*'"
powershell 'Add-WindowsCapability -Online -Name OpenSSH.Server~~~~0.0.1.0'

powershell 'netsh advfirewall firewall add rule name="Open Port 22" dir=in action=allow protocol=TCP localport=22'


echo aa
ssh runneradmin@localhost dir
echo bb
