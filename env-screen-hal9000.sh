EXTERNAL_OUTPUT="DP2-1"
INTERNAL_OUTPUT="eDP1"


xrandr | grep -w $EXTERNAL_OUTPUT | grep " connected "
if [ $? -eq 0 ]; then
  xrandr --output $INTERNAL_OUTPUT --off 
  xrandr --output DP2-1 --mode 2560x1440
  xrandr --output DP2-2 --mode 2560x1440 --right-of DP2-1
  # xrandr --output DP5 --auto 
else
 xrandr --output $INTERNAL_OUTPUT --mode 1920x1080
fi
