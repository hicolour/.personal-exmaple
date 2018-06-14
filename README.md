# This example project for .personal direcotry used to customize [Env!](https://github.com/hicolour/env)


1. Clone repository into ~/.personal or link to this folder
2. Create your local `this` file in ~/.personal 
   Fiel should contains unique identifier of your enviroment e.g. I'm using my machine hostname
   Format of the file should be:
   ```
   this=hal9000
   ```
3. Setup some local specific e.g. screen configuration (this should be hosted in repo)
env-screen-hal9000.sh
 ```
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
```


