gst-launch-1.0 -v udpsrc port=9111 caps="application/x-rtp, media=video, encoding-name=H264, payload=96" ! \
    rtph264depay ! \
    h264parse ! \
    avdec_h264 ! \
    videoconvert ! \
    autovideosink sync=false
