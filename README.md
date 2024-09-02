# Setup
* Other Required Files
  * Put `vshadow.exe` in shadowsync folder, according to the license it's not redistributable so it's not here
  * Download cwRsync from [itefix](https://itefix.net/cwrsync/client/downloads) to and put it in the shadowsync folder so that rsync executable can be found at `shadowsync\cwrsync\bin\rsync.exe`
* Update `sync.bat`, you should only need to edit it once
  * Sync target is hard-coded to 192.168.168.2::latest/%COMPUTERNAME%/%DRIVE_NAME%/%FOLDER%
* Update `backup.txt`, it may vary on every computers
* Put this folder at `C:\shadowsync`
* Create `Task Scheduler` with administrator permission, I usually use `add_cron_user.bat` and `hide_cron_user.reg` to create an invisible user with administrator privilege
