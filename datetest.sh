#!/bin/bash
if [ $(date +%u) = "6" ] || [ $(date +%u) = "7" ]; then
  if getent group timeless | grep -qw "$PAM_USER"; then
    exit 0
  else
    exit 1
  fi
else
  exit 0
fi
