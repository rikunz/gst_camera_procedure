gst-launch-1.0 \
  shmsrc socket-path=/tmp/infered.feed do-timestamp=true is-live=true ! \
  video/x-raw,format=RGB,width=1920,height=1080,framerate=10/1 ! \
  queue max-size-buffers=2 leaky=upstream ! \
  videoconvert ! \
  fpsdisplaysink video-sink=autovideosink sync=false text-overlay=true