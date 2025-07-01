@echo off

@REM set the CMD window width
mode con:cols=200 lines=50

@rem changes the current directory to the directory where the batch file is located.
@rem to run bat as admin, create a shortcut for this bat file and set the advanced property for the shortcut file as Run as administrator.
@rem for more on how to run bat as admin, see this: https://stackoverflow.com/questions/6811372/how-to-code-a-bat-file-to-always-run-as-admin-mode
pushd %~dp0

@rem remove the env if it already exists
setlocal enabledelayedexpansion
set "env_name=ComfyUI"

for /f "delims=" %%i in ('conda env list ^| findstr /B /C:"%env_name% "') do (
    set "env_exists=1"
)

if defined env_exists (
    echo Updating environment %env_name%...
    @rem update the env based on the requirements.txt
    echo.
    call conda activate %env_name%
    call conda install pytorch torchvision torchaudio pytorch-cuda=12.1 -c pytorch -c nvidia
    pip install -r requirements.txt
    echo.
    echo Environment is now updated!
    PAUSE
) else (
    echo Installing Environment %env_name%...
    @rem create the env based on requirements.txt
    echo.
    call conda create -n %env_name% python=3.11
    call conda activate %env_name%
    call conda install pytorch torchvision torchaudio pytorch-cuda=12.1 -c pytorch -c nvidia
    pip install -r requirements.txt
    echo.
    echo Environment is now installed!
    PAUSE
)


endlocal
