FROM ros:humble

RUN apt update -y
RUN apt install -y default-jdk
RUN apt install -y gradle
RUN apt install -y curl python3-colcon-common-extensions python3-pip python3-vcstool
RUN python3 -m pip install -U git+https://github.com/colcon/colcon-gradle
RUN python3 -m pip install --no-deps -U git+https://github.com/colcon/colcon-ros-gradle

RUN mkdir -p /ros2_java_ws/src
WORKDIR /ros2_java_ws
RUN curl -skL https://raw.githubusercontent.com/ros2-java/ros2_java/main/ros2_java_desktop.repos | vcs import src

COPY build.bash /ros2_java_ws/build.bash
RUN bash /ros2_java_ws/build.bash

COPY setup.sh /ros2_java_ws/setup.sh
ENTRYPOINT [ "/ros2_java_ws/setup.sh" ]