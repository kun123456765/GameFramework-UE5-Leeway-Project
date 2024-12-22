set Editor=%~dp0engine\Engine\Binaries\Win64\UnrealEditor.exe
set Project=%~dp0game\Game.uproject
set Map=/game/Content/TopDown/Maps/TopDownMap

cd %~dp0

call engine\Register.bat nopause

start  "EditorClient" %Editor% %Project% %Map% -game -clientonly -abslog="%~dp0game\Saved\Logs\EditorClient.log"