#!/bin/bash

for path in ${1}/*
do
    if [ -f "${path}" ]
    then
        extension="$(<<< "${file}" sed -rn 's/^.*\.(.*)$/\1/p')"
        if [ -n "${extension}" ]
        then
            mkdir -p "${1}/${extension}"
            mv "${path}" "${1}/${extension}"
        else
            mkdir -p "${1}/unknown"
            mv "${path}" "${1}/unknown"
        fi
    fi
done
