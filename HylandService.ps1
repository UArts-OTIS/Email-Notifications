#################################################################################################
#Author: Charles Frank
#Date Created: 2022-03-22
#Date Revised: 2022-03-22
#Production File Location: \\apponbase.ua.lan\C$\CEFScripts
#################################################################################################
#Purpose: Notify Blaine and Charles if the Hyland Service fails and cannot auto restart itself. 
#Purpose: If this service is not running, the onbase application will not function as expected
#################################################################################################

#who is being notified?
$usersToNotify = "bcarfagno@uarts.edu","chfrank@uarts.edu", "rsavoia@uarts.edu"

#what do you want to say?
$output = "The Hyland Distribution Servie has failed after repeatly attempting to restart itself. Please log onto apponbase.ua.lan and review the service activity."      
$emailMessage = $output        
Write-Output $output

#send the message
Send-MailMessage -From "OTIS@uarts.edu" -To $usersToNotify -Subject "Hyland Service has failed on apponbase" -SmtpServer "relay1.uarts.edu" -Body $emailMessage