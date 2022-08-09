# will enable file and printer sharing
Set-NetFirewallRule -DisplayGroup "File And Printer Sharing" -Enabled True
# will allow ICMP traffic
netsh advfirwall firewall add rule name="Allow incoming ping requests 1pv4" dir=in action=allow protocol=icmpv4
# the next two will add and enable the use of remote management with the use of Network Level Authintication
Reg add "HKLM\SYSTEM\CurrentControlSet\Control\Terminal Server" /v fDenyTSConnections /t REG_DWORD /d 0 /f
Set-itemProperty 'HKLM:\SYSTEM\CurrentControlSet\Control\Terminal Server\WinStations\RDP-Tcp' -nAME "UserAuthentication" -Value 1
# This will remove all the unwanted bloat
iex ((New-Object System.Net.WebClient).DownloadString('https://git.io/debloat'))
# this will enable Viridian
Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Hyper-V -All
# Finally we wil disable a non-secure protocol known as SMBv1
Set-SmbServerConfiguration -EnableSMB1Protocol $false -Force
