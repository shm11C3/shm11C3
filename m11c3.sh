#!/bin/bash
# Windows Only

function confirm {
  while true; do
    echo -n "$* [y/n]: "
    read CONFIRM_RESULT
    case $CONFIRM_RESULT in
      [Yy]*)
        return 0
        ;;
      [Nn]*)
        return 1
        ;;
      *)
        echo "y | n"
        ;;
    esac
  done
}

if confirm "Want to send me an email?"; then
  start 'mailto:m11c3.sh@gmail.com'
fi

if confirm "Do you want to read my code?"; then
  start 'https://github.com/shm11C3'
fi

echo "bye"

sleep 1
