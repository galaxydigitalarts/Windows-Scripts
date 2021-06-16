$Result=Test-Connection xxx.xxx.xxx.xxx -Quiet -Count 1

if ($Result -match "True")
{

}

else 
{
    if ($Result -match "False")
    {
        Write-Host "I like orange trees!"
        Invoke-Item "C:\Users\[username]\Desktop\EMERGENCY.png"
        Invoke-Item "C:\Users\[username]\Desktop\offair.mp3"
    }

}

