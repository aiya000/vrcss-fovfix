# :sparkles: vrcss-fovfix :sparkles:

**'VRChatの写真のFOVを調整するやつ'**

**'A stuff to adjust the FOV of VRChat pictures'**

## Usage

### `./vrcss-fov-all.sh`

This adjusts the FOV of all VRChat screenshots in `./vrcss-fov-source` directory and saves the results to `./vrcss-fov-dist`.

1. Put your VRChat pictures to `./vrcss-fov-source`
2. Run `./vrcss-fov-all.sh`
    - You can specify fov by `./vrcss-fov-all.sh <fov>`. Default is `50`, to adjust VRChat's default FOV
3. Your result is saved to `./vrcss-fov-dist/*`
4. Clean source pictures from `./vrcss-fov-source` manually

### `./vrcss-fov.sh`

You can adjust only an image by running `./vrcss-fov.sh [fov] <image>`.

Run `./vrcss-fov.sh <image>` instead of above to use the default FOV `50`.

## Requirements

- zsh (PR to support bash is welcome)
- ImageMagick

## :star: Original code and Respects :star:

This repository code is a fork of [chigirits/README.md](https://gist.github.com/chigirits/55d6eed4396ed5da64878af2b43111ed).
Thanks chigirits.

This original source is for `cmd.exe` of Windows.
