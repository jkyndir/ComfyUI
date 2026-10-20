@echo off
@rem changes the current directory to the directory where the batch file is located.
@rem to run bat as admin, create a shortcut for this bat file and set the advanced property for the shortcut file as Run as administrator.
@rem for more on how to run bat as admin, see this: https://stackoverflow.com/questions/6811372/how-to-code-a-bat-file-to-always-run-as-admin-mode
pushd "%~dp0"
@rem activate the env
call conda activate ComfyUI
if errorlevel 1 (
    echo Failed to activate conda environment "ComfyUI".
    echo Run _J_env.bat to create or update it.
    pause
    popd
    exit /b 1
)
python main.py --auto-launch --preview-method auto
call conda deactivate
popd
PAUSE