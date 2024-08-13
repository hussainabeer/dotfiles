if type "xrandr"; then
  for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
    echo type
    MONITOR=$m polybar --reload toph &
  done
else
  polybar --reload toph &
fi
