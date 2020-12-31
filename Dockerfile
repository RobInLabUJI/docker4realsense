FROM ros:kinetic-perception

RUN apt-get update && apt-get install -y \
    ros-kinetic-realsense2-camera \
    && rm -rf /var/lib/apt/lists/*

CMD ["roslaunch", "realsense2_camera", "rs_camera.launch"]

