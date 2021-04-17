# ArchRoyal Linux

ArchRoyal Linux installer is a simple and intuitive Terminal based (TUI) Arch Linux installer. It guides you through every aspect of the installation procedure, from partitioning to installing your favorite DE/WM.

This project is based on [Anarchy](https://gitlab.com/anarchyinstaller/installer).

## Installation

### Linux

The easiest way to flash ArchRoyal onto a USB drive is to use `dd`:

```sh
# Do NOT copy and paste the following, manually type the command, filling in the appropriate information
# Replace sdx with the name of your USB
dd if=archroyal-<version>-x86_64.iso of=/dev/sdx status=progress conv=sync
```

If you're more comfortable with GUI-based programs, you can use [Etcher](https://www.balena.io/etcher/) or
GNOME Disks (Restore image option).

### Windows

Use [Win32DiskImager](https://sourceforge.net/projects/win32diskimager/) or [Rufus](https://rufus.ie/).

### Install via SSH

_Keep in mind that running the installer over an SSH connection requires physical access to the remote machine._

After flashing ArchRoyal on a USB drive, it must be booted from the machine where you want to install.
If it has a wired internet connection, you only have to wait approximately one minute for ArchRoyal to start before
connecting.
If you have a wireless connection, you have two options: you normally connect to the target machine
(requires physical access), or you must compile the installer yourself as indicated in the next step, but adding the file `autoconnect.sh` (it must be kept exactly the same name) along with the script `build.sh`.
The `autoconnect.sh` file must have the following format:

```sh
SSID="your_wifi_network_ssid"
PASSWORD="your_wifi_network_password"
PUBLIC_KEY=/path/to/your/public/key
```

`SSID` must contain the name that identifies the wifi network, `PASSWORD` is its respective password, and `PUBLIC_KEY` refers to the local path of our public SSH key. Then you can compile the installer normally. To connect simply run on your local machine (from where you will install via SSH): `ssh root@ip.address.of.target`. The default password is `archroyal`.

## Compiling the installer

You have two options for compiling the installer:

- If on Arch Linux: run `build.sh` with root permissions (e.g. with `sudo`)
- If elsewhere: run `build.sh -d`, which will build it with `docker` in a container

You can also manually build ArchRoyal using the `Dockerfile` with your preferred arguments.
