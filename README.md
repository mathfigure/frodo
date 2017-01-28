# frodo-redpill v0.1

### Download
git clone -b frodo-redpill https://github.com/mathfigure/frodo

### Build
cd frodo/Src  
./autogen.sh CFLAGS="-O2 -Wno-narrowing" LIBS=-lrt  
make

### Install
sudo make install

### Run
Frodo  
FrodoSC

### Test
hexedit /dev/shm/C64_RAM  
cat /dev/shm/C64_RAM | od -Ax -t x1 -v | less  
watch -d -n0 "cat /dev/shm/C64_RAM | od -Ax -vtx1 -w40 -j 1024 -N 1000"  
ffplay /dev/shm/C64_RAM -f rawvideo -video_size 256x256 -pixel_format gray -framerate 50 -loop 0  
gst-launch-1.0 multifilesrc location=/dev/shm/C64_RAM ! videoparse width=256 height=256 framerate=50 format=25 ! videoconvert dither=0 ! videoscale method=0 ! agingtv ! ximagesink
