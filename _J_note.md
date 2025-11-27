# Install ComfyUI from Github

See this: [docs.comfy.org/installation/manual_install](https://docs.comfy.org/installation/manual_install)

1. Run `_J_env.bat` to install or update env
1. Run `_J_launch.bat` to launch the app.

# Install ComfyUI Manager

This is needed if ComfyUI is installed via Github. See here: [Installing the ComfyUI Manager](https://docs.comfy.org/development/core-concepts/nodes#comfyui-manager) & [Git clone Comfy-Org/ComfyUI-Manager](https://github.com/Comfy-Org/ComfyUI-Manager?tab=readme-ov-file#installationmethod1-general-installation-method-comfyui-manager-only)

In the `ComfyUI/custom_node`, git clone this repo: [Comfy-Org/ComfyUI-Manager](https://github.com/Comfy-Org/ComfyUI-Manager)

# Troubleshooting

- When using FaceID from [ComfyUI_IPAdapter_plus](https://github.com/cubiq/ComfyUI_IPAdapter_plus), plz install `insightface` in the environment manually.
  - Install from the downloaded insighface wheel for the correct python version: [ERROR: Failed building wheel for insightface 773](https://github.com/cubiq/ComfyUI_IPAdapter_plus/issues/773)
  - And need to install onnxruntime too: `pip install onnxruntime`
  - <https://github.com/cubiq/ComfyUI_IPAdapter_plus/issues/850>
