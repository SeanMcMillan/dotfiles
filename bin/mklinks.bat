pushd %~dp0..
set REPO=%CD%
cd ..
set PROJECTS=%CD%
popd

mklink %USERPROFILE%\.bashrc %REPO%\.bashrc
mklink %USERPROFILE%\.shellrc %REPO%\.shellrc
mklink %USERPROFILE%\.aliases %REPO%\.aliases
mklink %USERPROFILE%\.gitconfig %REPO%\.gitconfig
mklink %USERPROFILE%\.gitignore_global %REPO%\.gitignore_global
mklink %USERPROFILE%\.profile %REPO%\.profile
mklink /D %USERPROFILE%\.vim %REPO%\.vim
mklink /D %USERPROFILE%\vimfiles %REPO%\.vim
mklink %USERPROFILE%\.vimrc %REPO%\.vimrc

mklink /D %USERPROFILE%\bin %REPO%\bin

mkdir %USERPROFILE%\.claude\hooks
mklink %USERPROFILE%\.claude\settings.json %REPO%\claude\settings.json
mklink %USERPROFILE%\.claude\statusline-command.sh %REPO%\claude\statusline-command.sh
mklink %USERPROFILE%\.claude\hooks\guard-bash-overreach.sh %PROJECTS%\quiet-guardrails\hooks\guard-bash-overreach.sh
mklink %USERPROFILE%\.claude\hooks\guard-write-overreach.sh %PROJECTS%\quiet-guardrails\hooks\guard-write-overreach.sh
