param( [int] $choice )
echo "1. Loopback"
echo "2. Wifi"
echo "3. Ethernet"
$choice = Read-Host "What do you want Bitch?"

function ipaddr($choice){

if ($choice -eq 1) {
Get-NetIpAddress -InterfaceIndex 1 -AddressFamily IPv4 > C:\Windows\Temp\prac.txt
Get-Content C:\Windows\Temp\prac.txt | %{ $_.Split(' ')[-1]; } > C:\Windows\Temp\output.txt
Get-Content C:\Windows\Temp\output.txt | ?{$_.trim() -ne ""} | set-content C:\Windows\Temp\output1.txt
$ip=Get-Content C:\Windows\Temp\output1.txt -First 1

function pingip($ip){

"Let's Begin"
"Pinging $ip"
ping -n 1 $ip
"Pinged"
"Good Bye"
}
pingip($ip)
break
}
if ($choice -eq 2) {
Get-NetIpAddress -InterfaceIndex 3 -AddressFamily IPv4 > C:\Windows\Temp\prac.txt
Get-Content C:\Windows\Temp\prac.txt | %{ $_.Split(' ')[-1]; } > C:\Windows\Temp\output.txt
Get-Content C:\Windows\Temp\output.txt | ?{$_.trim() -ne ""} | set-content C:\Windows\Temp\output1.txt
$ip=Get-Content C:\Windows\Temp\output1.txt -First 1

function pingip($ip){

"Let's Begin"
"Pinging $ip"
ping -n 1 $ip
"Pinged"
"Good Bye"
}
pingip($ip)
break
}
if ($choice -eq 3) {
Get-NetIpAddress -InterfaceIndex 12 -AddressFamily IPv4 > C:\Windows\Temp\prac.txt
Get-Content C:\Windows\Temp\prac.txt | %{ $_.Split(' ')[-1]; } > C:\Windows\Temp\output.txt
Get-Content C:\Windows\Temp\output.txt | ?{$_.trim() -ne ""} | set-content C:\Windows\Temp\output1.txt
$ip=Get-Content C:\Windows\Temp\output1.txt -First 1

function pingip($ip){

"Let's Begin"
"Pinging $ip"
ping -n 1 $ip
"Pinged"
"Good Bye"
}
pingip($ip)
break
}
if ($choice -ne '[1 -or 2 -or 3]') {
echo "No Sir" 
break
}

}
ipaddr($choice)