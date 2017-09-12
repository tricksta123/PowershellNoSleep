#Enter the amounf of time in minutes you would like the script to run for.
param($minutes = 540)

#Invoke Windows Script Host
$myshell = New-Object -com "Wscript.Shell"

#Loop and press the shift key every minute until the specificed number of minutes is reached
for ($i = 0; $i -lt $minutes; $i++) {
  Start-Sleep -Seconds 1
  $myshell.sendkeys("+")
}
