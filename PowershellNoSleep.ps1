$scroll = "/-\|/-\|"
$idx = 0
$origpos = $host.UI.RawUI.CursorPosition
$origpos.Y += 1

#Enter the amount of time in minutes you would like the script to run for.
$minutes = 540
#Invoke Windows Script Host
$myshell = New-Object -com "Wscript.Shell"

write-host "Preventing Sleep" -NoNewline

#Loop and press the shift key every minute until the specificed number of minutes is reached

for ($i = 0; $i -lt $minutes; $i++) {
  $host.UI.RawUI.CursorPosition = $origpos 
  Write-Host $scroll[$idx] -NoNewline 
  $idx++ 
  if ($idx -ge $scroll.Length) 
  {  
    $idx = 0 
  }  
  Start-Sleep -Seconds 1  
  $myshell.sendkeys("+")
}
$host.UI.RawUI.CursorPosition = $origpos
Write-Host ' '
