# docker4realsense

Run in a terminal:
```
xhost +local:root
docker run --rm -it --privileged --env="DISPLAY" \
  --env="QT_X11_NO_MITSHM=1" \
  --volume="/tmp/.X11-unix:/tmp/.X11-unix:rw" \
  --name realsense realsense:noetic
```

In another terminal:
```
docker exec -it realsense /bin/bash
source /opt/ros/noetic/setup.bash
rosrun image_view image_view image:=/camera/color/image_raw
```

## Point Cloud

Run in a terminal:
```
docker run --rm -it --privileged --net=host \
  --env ROS_HOSTNAME=localhost realsense:noetic \
  roslaunch realsense2_camera rs_camera.launch filters:=pointcloud
```

In another terminal:
```
rocker --nvidia --x11 --network host osrf/ros:noetic-desktop-full rviz
```

## Building the Docker image

Clone the repository and run in a terminal:
```
docker build -t realsense:noetic .
```
