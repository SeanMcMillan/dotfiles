mklink %USERPROFILE%\.bashrc %CD%\.bashrc
mklink %USERPROFILE%\.gitconfig %CD%\.gitconfig
mklink %USERPROFILE%\.gitignore_global %CD%\.gitignore_global
mklink %USERPROFILE%\.profile %CD%\.profile
mklink /D %USERPROFILE%\.vim %CD%\.vim
mklink /D %USERPROFILE%\vimfiles %CD%\.vim
mklink %USERPROFILE%\.vimrc %CD%\.vimrc

mkdir %USERPROFILE%\.claude\hooks
mklink %USERPROFILE%\.claude\settings.json %CD%\claude\settings.json
mklink %USERPROFILE%\.claude\statusline-command.sh %CD%\claude\statusline-command.sh
mklink %USERPROFILE%\.claude\hooks\guard-bash-overreach.sh %CD%\..\quiet-guardrails\hooks\guard-bash-overreach.sh
mklink %USERPROFILE%\.claude\hooks\guard-write-overreach.sh %CD%\..\quiet-guardrails\hooks\guard-write-overreach.sh
