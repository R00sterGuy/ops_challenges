# Get-EventLog -LogName System -After (Get-Date).AddHours(-24) | Out-File -FilePath C:\Users\knott\OneDrive\Desktop\last_24.txt
# will create a file on my desktop comprised of the events of the System event log that have occured over the last 24 hrs
# Get-EventLog -LogName System -EntryType Error | Out-File -FilePath C:\Users\knott\OneDrive\Desktop\error.txt
# will create a file on my desktop comprised of the errors of the System event log
# Get-EventLog -LogName System -InstanceId 16 
# will out put all system logs that have the id number 16
# Get-EventLog -LogName System -Newest 20
# outputs the newest events from the system log
# Get-EventLog -LogName System -Newest 500 | Select-Object -Property source
# outputs the the 500 most recent entries in the system event log from all sources