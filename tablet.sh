adb reverse tcp:5900 tcp:5900

xrandr --newmode "720x1560_60.00"  96.07  720 776 856 992  1560 1561 1564 1614  -HSync +Vsync
xrandr --addmode HDMI-0 720x1560_60.00

xrandr --output HDMI-0 --mode 720x1560_60.00 --right-of DP-4
x11vnc -clip 720x1560+0+0
