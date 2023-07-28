#!/usr/bin/env bash

DIRNAME=../resources/asciinema/
for f in $(find $DIRNAME -name "*.gif" -printf "%f\n"); do 
    echo $f
    if [[ "${f}"  =~ ^([^\.]*)(\.ascii.*)$ ]]; then
        FILENAME_WO_EXTENSTON=${BASH_REMATCH[1]}
    else
       continue
    fi
    readarray -d'_' -t PARTS < <(printf "%s" "$FILENAME_WO_EXTENSTON")
    declare -p PARTS
    # PARTS[0] = replication type
    # PARTS[1] = source
    # PARTS[2] = target
    break
done

# [[ "snapshot_oraee_minio.ascii.cast.gif" =~ (.*)(\.+)$ ]] && echo ${BASH_REMATCH[1]}