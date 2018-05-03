# name the installer
OutFile echo-setup.exe

# install dir
InstallDir "D:\echo"

# require admin execution level
RequestExecutionLevel admin

# Pages
Page directory
Page instfiles

Name echo

# Section 1, Install AStudio
Section
	SetOutPath $INSTDIR

	# copy AStudio
	File /r "echo\*"

	# create desktop shortcut
	SetShellVarContext all
	CreateShortCut "$DESKTOP\echo.lnk" "$INSTDIR\echo.exe" ""

SectionEnd
