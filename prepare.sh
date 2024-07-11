#!/bin/sh

selfDir="$( dirname -- "$( realpath "$0" )" )"

chmod +x "${selfDir}/prepare.sh"
chmod +x "${selfDir}/bin/"*

bashRcDir="${HOME}/.bashrc.d"
if [ -d "$bashRcDir" ]; then
    bashRcFile="${bashRcDir}/davidsusu-shell-scripts.bashrc"
    echo 'PATH="$PATH:'"$selfDir"'/bin"' > "$bashRcFile"
    echo 'for file in '"$selfDir"'/lib/*; do . "$file"; done' >> "$bashRcFile"
fi
