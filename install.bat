@echo off
echo [=] Deploying Claude 4.8 UltraCode AgentSwarm Environment Globals...
copy .aider.conventions.md "%USERPROFILE%\.aider.conventions.md" /Y
copy aider-cloud.md "%USERPROFILE%\aider-cloud.md" /Y
copy .aider.conf.yml "%USERPROFILE%\.aider.conf.yml" /Y
copy aider.model.settings.yml "%USERPROFILE%\aider.model.settings.yml" /Y
copy aider.model.metadata.json "%USERPROFILE%\aider.model.metadata.json" /Y
echo [=] Injecting launcher shortcut macro into system path...
if exist "C:\Windows\System32" (
    copy aider-cloud.bat "C:\Windows\System32\aider-cloud.bat" /Y
    echo [+] Installation Perfect and Globally Complete!
) else (
    echo [-] Error: System32 folder path not matched.
)
pause
