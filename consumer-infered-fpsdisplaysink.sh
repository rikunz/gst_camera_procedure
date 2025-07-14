gst-launch-1.0 shmsrc socket-path=/tmp/infered.feed do-timestamp=1 ! \
	video/x-raw,format=RGB,width=1920,height=1080,framerate=10/1 ! \
	identity sync=true ! \
	queue max-size-buffers=2 leaky=downstream ! \
	videoconvert ! \
	fpsdisplaysink video-sink=autovideosink text-overlay=true sync=false