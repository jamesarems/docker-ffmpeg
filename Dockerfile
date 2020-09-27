## FFmpeg server container
# Clone official centos docker from dockerhub
FROM centos:8
MAINTAINER James PS <jamesarems@hotmail.com>
VOLUME ["/data"]
# Install FFMPEG
RUN dnf install epel-release dnf-utils -y
RUN dnf config-manager --enable PowerTools && dnf install --nogpgcheck https://download1.rpmfusion.org/free/el/rpmfusion-free-release-8.noarch.rpm https://download1.rpmfusion.org/nonfree/el/rpmfusion-nonfree-release-8.noarch.rpm -y
RUN dnf install http://rpmfind.net/linux/epel/7/x86_64/Packages/s/SDL2-2.0.10-1.el7.x86_64.rpm -y
RUN dnf install ffmpeg ffmpeg-devel -y
# Cleaning up tar files and caches
RUN dnf clean all
# Everything begins here!
CMD ["--help"]
ENTRYPOINT ["ffmpeg"]
