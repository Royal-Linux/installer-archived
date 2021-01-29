FROM docker.io/archlinux:latest

# In case we publish the image anywhere
LABEL maintainer="Ulises Jeremias Cornejo Fandos <ulisescf.24@gmail.com>"

# Needed to properly set variables inside and outside the container
ENV IS_CONTAINER="yes"

RUN pacman -Sy --noconfirm archiso mkinitcpio-archiso reflector
COPY assets /archroyal/assets
COPY util /archroyal/util
COPY src archroyal-packages.x86_64 build.sh profiledef.sh /archroyal/
ENTRYPOINT ["/archroyal/build.sh"]
