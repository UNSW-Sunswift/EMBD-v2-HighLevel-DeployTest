
# arm64 jetson based image
# FROM dustynv/ros:galactic-ros-base-l4t-r32.5.0

# x86 Based image
FROM osrf/ros:galactic-desktop  


MAINTAINER Tom-Killingback tomkillingback@gmail.com

SHELL ["/bin/bash", "-c"] 

# Do all work in this folder
WORKDIR /sunswift

# Copy source files
ADD src /sunswift/src/  

# Copy Setup & run files
ADD setup.sh /sunswift/
ADD build.sh /sunswift/
ADD run.sh /sunswift/
ADD launch/system_launch.py /sunswift/launch/

# Setup program & deps
RUN chmod 775 ./setup.sh
RUN /bin/bash -c 'chmod 775 ./setup.sh'
RUN /bin/bash -c './setup.sh'

# Build program 
RUN /bin/bash -c 'chmod 775 ./build.sh'
RUN /bin/bash -c './build.sh'

# Run program
RUN /bin/bash -c 'chmod 775 ./run.sh'
CMD ["/bin/bash", "-c", "./run.sh"]

