#!/bin/bash

for f in *.gjf; do  # Only read files available in the same directory
    [ -e "$f" ] || continue  # Skip if no .gjf files exist

    gaussfile="$(basename -s .gjf "$f")"  # Extract filename without extension
    echo -e "\e[38;2;32;148;139m$gaussfile job started at $(date +%H:%M:%S'('%Y-%m-%d')')\e[0m"

    g16 < "$gaussfile.gjf" > "$gaussfile.log"  # Run Gaussian job
    formchk "$gaussfile.chk" "$gaussfile.fchk"  # Create formatted checkpoint file
sleep 1
    if grep -q "Normal termination" "$gaussfile.log"; then
        dest="./Normal_Termination/$gaussfile/"
        tail -n 4 "$gaussfile.log"
        echo -e "\e[3;38;2;106;177;135m$gaussfile Achieved Normal Termination.\n-----------------------------------------\n\e[0m"
    else
        dest="./Error/$gaussfile/"
        tail -n 4 "$gaussfile.log"
        echo -e "\e[3;38;2;250;103;117m$gaussfile encountered an error.\n-----------------------------------------\n\e[0m"
    fi

    mkdir -p "$dest"
    mv "$gaussfile.gjf" "$gaussfile.log" "$gaussfile.chk" "$gaussfile.fchk" "$dest/" 2>/dev/null

done




