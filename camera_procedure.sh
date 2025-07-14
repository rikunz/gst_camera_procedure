gst-launch-1.0 libcamerasrc is-live=true ! \
	video/x-raw,width=1920,height=1080,framerate=10/1,format=NV12 ! \
	queue max-size-buffers=10 leaky=downstream ! \
	videoconvert ! \
	identity silent=false ! \
	shmsink socket-path=/tmp/feed.raw sync=false wait-for-connection=false drop=true