# DisableThem

This is a simple Bash script that allows you to **disable** or **enable** the camera and/or microphone on your Linux machine. The script is interactive, colorful, and user-friendly, with options to disable/enable these devices and provide status feedback.

## Features

- **Disable Camera**: Disables the webcam by unloading the `uvcvideo` kernel module.
- **Disable Microphone**: Disables the microphone by unloading the `snd_hda_intel` kernel module.
- **Enable Camera**: Re-enables the webcam by loading the `uvcvideo` kernel module.
- **Enable Microphone**: Re-enables the microphone by loading the `snd_hda_intel` kernel module.
- **Colorful, Bold Output**: Uses ANSI escape codes to provide colorful, bold text for better user experience in the terminal.

## Requirements

- A **Linux** environment (most distributions, like Ubuntu, Fedora, Debian, etc.).
- `modprobe` must be available for managing kernel modules.
- **Root privileges** (you'll need `sudo` access to run the script).