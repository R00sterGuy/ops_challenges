# will print all active processes ordered by highest CPU time consuption at the top
Get-Process | Sort-Object -Property CPU -Descending
# prints all active processes and sorts by ID number
Get-Process | Sort-Object -Property id -Descending
# prints the top 5 active processes and orders them by highest WS(K) at the top
Get-Process | Sort-Object -Property WS -Descending | select -Last 5
#start internet explorter and opens a specific site
Start-Process iexplore https://owasp.org/www-project-top-ten/
#starts interente explorer opens ten times
for($i=1; $i -le 11; $i++) {Start-Process -file iexplore -arg https://owasp.org/www-project-top-ten/}
#closes all internet explorer windows
Get-Process iexplore | stop-process
#kills a process(explorer) by its ID number.
Stop-Process -id 8276