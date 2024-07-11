#!/bin/sh

selfDir="$( dirname -- "$( realpath "$0" )" )"
bashUnitExecutable="${selfDir}/bash_unit"

if ! [ -e "$bashUnitExecutable" ]; then
    curl -s https://raw.githubusercontent.com/pgrange/bash_unit/master/install.sh | bash
fi

chmod +x "$bashUnitExecutable"
"$bashUnitExecutable" "${selfDir}/tests/test_"*
