@echo off
::To get the name and path of the plugin which will be installed.
::Note that: Put only on plugin in the folder once! 
FOR /D %%I in (*) do (
	set pluginName=%%~nI 
	set pluginPath=%%~fI
)

::To create links and myplugins folders in the root directory of eclipse.
cd ..
If not exist "links" mkdir "links"
If not exist "myplugins" mkdir "myplugins"

cd myplugins
IF not exist %pluginName% (
	mkdir %pluginName%
	cd %pluginName%
	IF not exist eclipse (
		mkdir eclipse
		cd eclipse
		echo D | xcopy %pluginPath%\features features /S /Q >nul
		echo D | xcopy %pluginPath%\plugins plugins /S /Q >nul
		cd ..
	)
	cd ..
	tree 
	cd ..
	cd links
	echo path=%cd:\=\\%\\%pluginName% > %pluginName%
	echo [SUCCESS] : %pluginName% is installed! Complete!
) else (
	echo [INFO ]: '%pluginName%' - This plugin has installed!
)
rd /s/q %pluginPath%
pause