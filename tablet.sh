adb reverse tcp:5900 tcp:5900

xrandr --newmode "1560x720_59.90"  91.16  1560 1640 1800 2040  720 721 724 746  -HSync +Vsync
xrandr --addmode HDMI-0 1560x720_59.90

xrandr --output HDMI-0 --mode 1560x720_59.90 --auto --right-of DP-4
x11vnc -clip 1560x720+0+0 -scale 0.5 -forever
