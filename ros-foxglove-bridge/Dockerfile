FROM ros:humble

RUN apt update -y
RUN apt install -y ros-humble-xacro
RUN apt install -y ros-humble-foxglove-bridge

EXPOSE 8765

ENTRYPOINT ["/bin/bash","-c","source /ros_ws/install/local_setup.bash && source /opt/ros/humble/setup.bash && ros2 launch foxglove_bridge foxglove_bridge_launch.xml port:=8765" ]
