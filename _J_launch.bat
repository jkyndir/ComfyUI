@echo off
@rem changes the current directory to the directory where the batch file is located.
@rem to run bat as admin, create a shortcut for this bat file and set the advanced property for the shortcut file as Run as administrator.
@rem for more on how to run bat as admin, see this: https://stackoverflow.com/questions/6811372/how-to-code-a-bat-file-to-always-run-as-admin-mode
pushd %~dp0
@rem activate the env
call conda activate ComfyUI
python main.py --auto-launch
call conda deactivate
PAUSE