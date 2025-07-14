gst-launch-1.0 tcpclientsrc host=127.0.0.1 port=9111 ! \
    multipartdemux ! \
    image/jpeg ! \
    jpegparse ! \
    jpegdec ! \
    videoconvert ! \
    autovideosink sync=false