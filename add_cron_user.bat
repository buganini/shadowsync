set /p pass="Enter password: "
net user /add cron %pass%
net user cron %pass%
net localgroup administrators cron /add
wmic useraccount WHERE "Name='cron'" set PasswordExpires=false