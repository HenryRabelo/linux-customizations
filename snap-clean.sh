#!/bin/bash

Clean() {

  if [ "$(id -u)" -ne 0 ]; then
    echo "To remove unused snaps, please run with sudo"
    exit 1
  fi
  
  local TOTAL=$(snap list --all | grep disabled | wc -l)
  
  for INT in $(seq 1 "$TOTAL"); do
    local PKGS=$(snap list --all | grep disabled)
    local NAME=$(echo $PKGS | awk 'NR==1 {print $1}')
    local REV=$(echo $PKGS | awk 'NR==1 {print $3}')
    snap remove "--revision=$REV" "$NAME"
  done

}

Clean
