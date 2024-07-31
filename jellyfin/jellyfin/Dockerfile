FROM jellyfin/jellyfin:10.6.4
RUN apt-get update && apt-get upgrade -y
RUN apt-get install -y gnupg
RUN apt-key adv --keyserver keyserver.ubuntu.com --recv-keys F63F0F2B90935439
RUN echo "deb http://ppa.launchpad.net/kisak/kisak-mesa/ubuntu bionic main" > /etc/apt/sources.list.d/kisak-ubuntu-kisak-mesa-bionic.list
RUN apt-get update
RUN apt-get install -y mesa-va-drivers
RUN apt-get upgrade -y
