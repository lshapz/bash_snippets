#!/bin/bash

DESKTOP="$HOME/Desktop"

APPLICATIONS="$HOME/Applications/Chrome Apps.localized"

OUTPUT="$(ls -t "$APPLICATIONS" | head -1)"

ln -sF "$APPLICATIONS/$OUTPUT" "$DESKTOP";

SHORTCUTNAME=$(ls -t  $DESKTOP | head -1);

if [ -z "$*" ]; then  
	mv "${DESKTOP}/${SHORTCUTNAME}" "${DESKTOP}/PWA"; 
else 
	mv "${DESKTOP}/${SHORTCUTNAME}" "${DESKTOP}/$1"; 
fi
