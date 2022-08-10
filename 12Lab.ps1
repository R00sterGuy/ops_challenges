# Create a Function to run our script
function Ipreport {
    #create a vairable to hold a txt file that contains the ipconfig information
    $holding = ipconfig /all > "network_report.txt" 
    # search the created txt file to find the ipv4 
    Select-String -path "network_report.txt" -Pattern "Ipv4 Address"
    # finally this will delete the report to save space
    Remove-Item -Path "network_report.txt"
    } 
    Ipreport