FROM ros:kinetic-perception

RUN apt-get update && apt-get install -y \
    ros-kinetic-realsense2-camera \
    && rm -rf /var/lib/apt/lists/*

