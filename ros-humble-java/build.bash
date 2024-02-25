#!/bin/bash
source /opt/ros/humble/setup.bash
rosdep update
rosdep install --from-paths src -y -i --skip-keys 'ament_tools'
colcon build --symlink-install