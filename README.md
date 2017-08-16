# frodo-redpill v0.1

## Download
```bash
git clone -b frodo-redpill https://github.com/mathfigure/frodo
```


## Platform: linux x86_64

### Build
```bash
cd frodo/Src
# configure, choose one of:
./autogen.sh                                # SDL + GLADE (recommended)
./autogen.sh --enable-opengl                # SDL + GLADE + OPENGL
./autogen.sh --disable-glade                # SDL
./autogen.sh --disable-sdl                  # X11 + GLADE
./autogen.sh --disable-sdl --disable-glade  # X11 (minimal)
# make
make -B -j4
```

### Install
```bash
sudo make install
```

### Run
```bash
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


## Platform: Windows (WIN32)
Start Visual Studio Command Prompt and type:
```bash
cd frodo\src
build.bat
frodosc
```
