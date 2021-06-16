 $myServiceArray=@()

 $myServiceArray="wuauserv","WinRM"

 Foreach($Service in $myServiceArray)
 {
 
 Try {
            $Computername=$env:COMPUTERNAME
            
            $Result=Get-Service -ComputerName $Computername -Name "$Service" -ErrorAction Stop  | select -ExpandProperty Status
 
            if ($Result -ne "running")
                {     
                     
                   Start-Service -name $Service 
                     
                    $Final=Get-Service -ComputerName $Computername -Name "$Service" -ErrorAction Stop  | select -ExpandProperty Status              
                    #----------------------------
                    # Configure Mail Variables
                    #---------------------------   

                    $EmailFrom = "[your send from email]"
                    $EmailTo = "[your send to email]"
                    $Subject = "$Computername Error $Service Not Running"
                    $Body = "Server: $Computername `n Service: $Service is not running. `n ***Attempting to start . . .*** `n Current Status = $Final"
                    $SMTPServer = "smtp.gmail.com"
                    $SMTPClient = New-Object Net.Mail.SmtpClient($SmtpServer, 587)
                    $SMTPClient.EnableSsl = $true
                    $SMTPClient.Credentials = New-Object System.Net.NetworkCredential("[your email prefix]", "[your email password]");
                    $SMTPClient.Send($EmailFrom, $EmailTo, $Subject, $Body)
                }
      }

Catch [Exception]
        {      
            #----------------------------
            # Configure Mail Variables
            #---------------------------

            $EmailFrom = "[your send from email]"
            $EmailTo = "[your send to email]"
            $Subject = "$Computername Error $Service Not Running"
            $Body = "Server: $Computername `n Service: $Service `n Status: Service not found or server not reachable `n $_"
            $SMTPServer = "smtp.gmail.com"
            $SMTPClient = New-Object Net.Mail.SmtpClient($SmtpServer, 587)
            $SMTPClient.EnableSsl = $true
            $SMTPClient.Credentials = New-Object System.Net.NetworkCredential("[your email prefix]", "[your email password]");
            $SMTPClient.Send($EmailFrom, $EmailTo, $Subject, $Body)
 
        } 
}

                            
 
 