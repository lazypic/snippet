Screen Capture
====

* install
```
sudo apt-get install libav-tools mplayer
```

* how to use.
```
//캡쳐하기
avconv -f alsa -ac 1 -i hw:1 -f x11grab -r 30 -s 1366x768 -i :0.0 -vcodec libx264 -thread 4 ~/output.mkv
```
```
//카메라 띄우기.
mplayer tv:// -tv driver=v412:width=120:height=90:device=/dev/video0 -noborder -geometry 100%:100% -ontop
```
