#!/bin/sh
# Get the list of input engines
ENTRIES=$(ibus read-config | grep engines-order | sed 's/engines-order:\|\[\|\]\| //g' | sed 's/,/\n/g' | sed "s/'//g")

# Get the currently active engine
CURRENT_ENGINE=$(ibus engine)

# Flag to indicate whether to switch to the next engine
NEXT=false

# Loop through the engines
for entry in $ENTRIES; do
  if [ "$NEXT" = true ]; then
    # Switch to the next engine after finding the current one
    ibus engine "$entry"
    exit 0
  fi

  # If the current engine matches, set the flag to true to switch to the next one in the next iteration
  if [ "$entry" = "$CURRENT_ENGINE" ]; then
    NEXT=true
  fi
done

# If we reach the end of the list without switching, loop back to the first engine
FIRST_ENGINE=$(echo "$ENTRIES" | head -n 1)
ibus engine "$FIRST_ENGINE"

exit 0
