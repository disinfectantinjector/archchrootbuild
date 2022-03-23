#!/bin/bash

chrootdir="/var/lib/archbuild/extra-x86_64/"
if [[ ! -d "$chrootdir" ]]; then
    sudo mkdir -p "$chrootdir" && sudo mkarchroot "$chrootdir"/root base-devel
fi

makechrootpkg -u -r "$chrootdir" -n
