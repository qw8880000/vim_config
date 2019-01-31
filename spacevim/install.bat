@echo off

set SPACEVIMDIR=%HOMEPATH%\.SpaceVim.d
set CURRENTDIR=%~dp0

if not exist %SPACEVIMDIR% (
  echo %SPACEVIMDIR% not exist, create.
  mkdir "%SPACEVIMDIR%"
) else (
  rd /s "%SPACEVIMDIR%"
  mkdir "%SPACEVIMDIR%"
)

mklink "%SPACEVIMDIR%\init.toml" "%CURRENTDIR%\init.toml"
mklink /J "%SPACEVIMDIR%\autoload" "%CURRENTDIR%\autoload"

pause
