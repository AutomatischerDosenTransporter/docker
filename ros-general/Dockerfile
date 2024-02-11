FROM registry.nussi.net/ros:humble


RUN apt update -y
RUN apt install -y ros-humble-xacro
RUN apt install -y ros-humble-ros2-control
RUN apt install -y ros-humble-ros2-controllers
RUN apt install -y ros-humble-joint-state-publisher
RUN apt install -y ros-humble-robot-localization
RUN apt install -y ros-humble-navigation2
RUN apt install -y ros-humble-nav2-bringup
RUN apt install -y ros-humble-slam-toolbox
RUN apt install -y ros-humble-twist-mux
RUN apt install -y libserial-dev


RUN  mkdir /ros_ws
WORKDIR /ros_ws

RUN git clone https://github.com/AutomatischerDosenTransporter/ros_ws /ros_ws
RUN /bin/bash -c "source /opt/ros/humble/setup.bash && colcon build --event-handlers console_direct+ --symlink-install"
RUN echo 'source /ros_ws/install/local_setup.bash' >> ~/.bashrc 
RUN echo 'source /opt/ros/humble/setup.bash' >> ~/.bashrc 
