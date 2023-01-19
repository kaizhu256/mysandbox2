uname
ls -la
echo $PWD

#!! powershell "Get-WindowsCapability -Online | Where-Object Name -like 'OpenSSH*'"
powershell 'Add-WindowsCapability -Online -Name OpenSSH.Server~~~~0.0.1.0'
echo '
        PasswordAuthentication no
        PubkeyAuthentication yes
' > /c/programdata/ssh/sshd_config
cat /c/programdata/ssh/sshd_config
powershell 'Start-Service sshd'

ssh-keygen -C "your_email@example.com" -N "" -f ~/.ssh/id_ed25519 -t ed25519
cd ~/.ssh
ls -la ~/.ssh
cp id_ed25519.pub authorized_keys
#!! powershell 'netsh advfirewall firewall add rule name="Open Port 22" dir=in action=allow protocol=TCP localport=22'


echo aa
ssh -oStrictHostKeyChecking=no runneradmin@localhost dir
echo bb
