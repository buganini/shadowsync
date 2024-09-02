rem @echo off

cd c:\shadowsync\

FOR /F "tokens=1,2* delims=," %%G IN (backup.txt) DO (
	echo %date% %time% > %%G:/%%H/syncstamp.txt
	type template.txt > vss-exec.cmd
	echo "set PATH=%PATH%" >> vss-exec.cmd
	echo echo %COMPUTERNAME%/%%G/%%H >> vss-exec.cmd
	echo DIR "B:/%%H"  >> vss-exec.cmd
	echo rsync.exe -rltvz --delete --delete-excluded --exclude-from=exclude.txt "/cygdrive/b/%%H/" "192.168.168.2::latest/%COMPUTERNAME%/%%G/%%H/" >> vss-exec.cmd
	echo dosdev -r -d B: >> vss-exec.cmd
	vshadow.exe -script=vss-setvar.cmd -exec=vss-exec.cmd %%G:
)