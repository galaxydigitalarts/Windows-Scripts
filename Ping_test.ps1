$Result=Test-Connection 172.19.115.99 -Quiet -Count 1

if ($Result -match "True")
{

}

else 
{
    if ($Result -match "False")
    {
        Write-Host "I like orange trees!"
        Invoke-Item "C:\Users\176245\Desktop\EMERGENCY.png"
        Invoke-Item "C:\Users\176245\Desktop\offair.mp3"
    }

}

