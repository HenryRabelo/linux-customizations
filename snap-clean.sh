#!/bin/bash

Clean() {

  if [ "$(id -u)" -ne 0 ]; then
    echo "To remove unused snaps, please run with sudo"
    exit 1
  fi
  
  local -r TOTAL="$(snap list --all | grep disabled --count)"
  
  for INT in $(seq 1 "$TOTAL"); do
    local PKGS NAME REV
    PKGS="$(snap list --all | grep disabled)"
    NAME="$(echo "$PKGS" | awk 'NR==1 {print $1}')"
    REV="$(echo "$PKGS" | awk 'NR==1 {print $3}')"
    snap remove "--revision=$REV" "$NAME"
  done

}

Clean
