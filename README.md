# frodo-redpill v0.1

### Platform
linux x86_64

### Download
```bash
git clone -b frodo-redpill https://github.com/mathfigure/frodo
```

### Build
```bash
cd frodo/Src
./autogen.sh CFLAGS=-O2
make
```

### Install
```bash
sudo make install
```

### Run
```bash
Frodo
FrodoSC
```

### Test
```bash
hexedit /dev/shm/C64_RAM
cat /dev/shm/C64_RAM | od -Ax -t x1 -v | less
watch -d -n0 "cat /dev/shm/C64_RAM | od -Ax -vtx1 -w40 -j 1024 -N 1000"
ffplay /dev/shm/C64_RAM -f rawvideo -video_size 256x256 -pixel_format gray -framerate 50 -loop 0
gst-launch-1.0 multifilesrc location=/dev/shm/C64_RAM ! videoparse width=256 height=256 framerate=50 format=25 ! videoconvert dither=0 ! videoscale method=0 ! ximagesink
```
