#!/bin/bash

# Source Build files
source /opt/ros/galactic/setup.bash
source /opt/ros/galactic/install/local_setup.bash
source ./install/local_setup.bash

# Run system
ros2 launch launch/system_launch.py
