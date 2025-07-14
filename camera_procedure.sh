gst-launch-1.0 libcamerasrc ! \
    video/x-raw,width=1920,height=1080,framerate=10/1,format=NV12 ! \
    queue max-size-buffers=2 leaky=downstream ! \
    videorate ! \
    video/x-raw,framerate=10/1 ! \
    shmsink socket-path=/tmp/feed.raw sync=false wait-for-connection=false