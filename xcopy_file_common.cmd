set dirname=%date%_%time:~0,-3%
set dirname="%dirname::=-%"
mkdir "%dirname%\user"

set custom_path="C:\Users\USERNAME\"


for %%f in (jpg jpeg png gif) do    xcopy "%custom_path%\*.%%f" "%dirname%\user\" /y /q 

for /d %%d in ("%custom_path%\*") do for %%f in (jpg jpeg png gif) do  xcopy "%%d\*.%%f" "%dirname%\user\" /s /y /q


set dirname=end_%time:~0,-3%
set dirname="%dirname::=-%"
mkdir "%dirname%"


calc