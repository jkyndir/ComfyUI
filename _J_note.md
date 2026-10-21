# Install ComfyUI from Github

See this: [docs.comfy.org/installation/manual_install](https://docs.comfy.org/installation/manual_install)

1. Run `_J_env.bat` to install or update env
1. Run `_J_launch.bat` to launch the app.

# Install ComfyUI Manager

This is needed if ComfyUI is installed via Github. See here: [Installing the ComfyUI Manager](https://docs.comfy.org/development/core-concepts/nodes#comfyui-manager) & [Git clone Comfy-Org/ComfyUI-Manager](https://github.com/Comfy-Org/ComfyUI-Manager?tab=readme-ov-file#installationmethod1-general-installation-method-comfyui-manager-only)

In the `ComfyUI/custom_node`, git clone this repo: [Comfy-Org/ComfyUI-Manager](https://github.com/Comfy-Org/ComfyUI-Manager)

# Troubleshooting

- FaceID presets from [ComfyUI_IPAdapter_plus](https://github.com/cubiq/ComfyUI_IPAdapter_plus) require `insightface` in the ComfyUI environment. This works (verified 2026-10-22, Python 3.13):
  - `conda activate ComfyUI`
  - `python -m pip install insightface`
  - `insightface 2.x` ships a universal wheel, so no C++ build tools or manually downloaded wheel are needed.
  - It installs `onnx`/`onnxruntime` automatically. Keep the node's `provider` on CPU unless `onnxruntime-gpu` is installed.
  - Do not downgrade NumPy to 1.26: it has no Python 3.13 wheels, and `insightface 2.x` works with NumPy 2.x. That was a workaround for older wheels; see [#850](https://github.com/cubiq/ComfyUI_IPAdapter_plus/issues/850) and [#6837](https://github.com/Comfy-Org/ComfyUI/issues/6837).
  - Legacy fallback: prebuilt `0.7.3` wheels for each Python version are available at [Gourieff/Assets](https://github.com/Gourieff/Assets/tree/main/Insightface), see [#773](https://github.com/cubiq/ComfyUI_IPAdapter_plus/issues/773). Only needed if pinning `0.7.3`.
- `_J_env.bat` recreates the environment from `requirements.txt`, which does not include `insightface`; reinstall it after recreating the environment.
