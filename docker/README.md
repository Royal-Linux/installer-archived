# Structure

Contents of this folder is used for building docker image/container needed for compiling ArchRoyal ISO.

# Building image

Docker image contains `add-aur.sh` and `setup.sh` files.
`docker-compile.sh` would be executed from inside container but it is not embedded into image/container.

To build a new image from `project root` run:

```bash
$ docker build -t archroyal:latest .
```

To remove image:

```bash
$ docker rmi archroyal:latest
```

# Publishing image (optional)

If you will, you can push created image to docker hub. ArchRoyal doesn't maintain an official docker image.

```bash
$ docker tag archroyal:latest <username>/archroyal:latest
$ docker tag <username>/archroyal:latest <username>/archroyal:"$(date +%F)"
```

Publish image:

```bash
$ docker login
# Enter username/password
$ docker push <username>/archroyal:"$(date +%F)"
$ docker push <username>/archroyal:latest
```

Replace `<username>` with your own `username` on docker hub.

# Compiling ISO

It is recommended to run the `compile` script from `project root` with `-d` flag. If `archroyal:latest` docker image doesn't exist, it would be created:

```bash
$ ./compile -d
```

To build an `ISO` image using [Docker](https://www.docker.com) you need to map project root folder to `/archroyal` inside docker container to do so run the following command from `project root`:

```bash
$ docker run --rm --privileged \
    --device-cgroup-rule='b 7:* rmw' \
    -v "${PWD}":/project \
    -e archroyal_iso_label=ARCHROYAL \
    -e archroyal_iso_release=0.0.1 \
    archroyal:latest
```

When compilation is completed you can find ArchRoyal `ISO` image under `[project root]/out`.

You can start a fresh container and walk trough the process with:

```bash
$ docker run --rm --privileged \
    --device-cgroup-rule='b 7:* rmw' \
    -v "${PWD}":/project \
    -e archroyal_iso_label=ARCHROYAL \
    -e archroyal_iso_release=0.0.1 \
    -it archroyal:latest
```

# Testing ISO

Use a virtualization software to test ArchRoyal bootable `ISO`.

For example using [QEMU](https://www.qemu.org) without a hard-disk on `Arch Linux` the command is like:

```bash
$ qemu-system-x86_64 -m 2048M -cdrom ./out/archroyal-0.0.1-x86_64.iso
```

Replace `archroyal-0.0.1-x86_64.iso` with desired ArchRoyal ISO in above command.

# Known issues

- [WARNING:](https://unix.stackexchange.com/questions/460043/how-can-i-successfully-build-an-archiso-image-airootfs-is-not-a-mountpoint) work/x86_64/airootfs is not a mountpoint. This may have undesirable side effects.
