#!/bin/bash

# Get the current input method
current_layout=$(ibus engine)

# Check if the current layout is xkb:mv::div
if [ "$current_layout" == "xkb:mv::div" ]; then
  # Switch to xkb:us::eng
  ibus engine xkb:us::eng
elif [ "$current_layout" == "xkb:us::eng" ]; then
  # Switch to xkb:mv::div
  ibus engine xkb:mv::div
else
  echo "Current layout is neither xkb:mv::div nor xkb:us::eng. No change made."
fi

exit 0
