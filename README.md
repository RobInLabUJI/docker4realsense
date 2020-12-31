# docker4realsense

Run in a terminal:
```
xhost +local:root
docker run --rm -it --privileged --env="DISPLAY" \
  --env="QT_X11_NO_MITSHM=1" \
  --volume="/tmp/.X11-unix:/tmp/.X11-unix:rw" \
  --name realsense realsense:kinetic
```

In another terminal:
```
docker exec -it realsense /bin/bash
source /opt/ros/kinetic/setup.bash
rosrun image_view image_view image:=/camera/color/image_raw
```
