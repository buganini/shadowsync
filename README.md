# What is Volume Shadow Copy
Check https://learn.microsoft.com/en-us/windows-server/storage/file-server/volume-shadow-copy-service


# Setup
* Other Required Files
  * Put `vshadow.exe` in shadowsync folder, according to the license it's not redistributable so it's not here
  * Put `dosdev.exe` in shadowsync folder, it can be found at https://sourceforge.net/projects/vscsc/files/utilities/dosdev.zip/download
  * Download cwRsync from [itefix](https://itefix.net/cwrsync/client/downloads) to and put it in the shadowsync folder so that rsync executable can be found at `shadowsync\cwrsync\bin\rsync.exe`
* Update `sync.bat`, you should only need to edit it once
  * Sync target is hard-coded to 192.168.168.2::latest/%COMPUTERNAME%/%DRIVE_NAME%/%FOLDER%
  * Add --password-file= according to your need
* Update `backup.txt`, it may vary on every computers
* Put this folder at `C:\shadowsync`
* Create `Task Scheduler` with administrator permission to execute `sync.bat`, I usually use `add_cron_user.bat` and `hide_cron_user.reg` to create an invisible user with administrator privilege
