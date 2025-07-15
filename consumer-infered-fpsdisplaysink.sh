gst-launch-1.0 \
  shmsrc socket-path=/tmp/infered.feed is-live=true ! \
  video/x-raw,format=RGB,width=1920,height=1080,framerate=10/1 ! \
  queue max-size-buffers=10 leaky=downstream ! \
  videoconvert ! \
  fpsdisplaysink video-sink=autovideosink sync=false