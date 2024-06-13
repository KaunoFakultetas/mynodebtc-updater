FROM ubuntu:latest

ARG CACHEBUSTER

# Install Dependencies
RUN apt-get update && apt-get install -y git openssh-client python3 make wget rsync

# Clone the MyNodeBTC repo
WORKDIR /home
RUN git clone https://github.com/mynodebtc/mynode.git

WORKDIR /home/mynode
RUN git checkout tags/latest_release
RUN make rootfs

# Copy the start-server script into the container
COPY start-server.sh /start-server.sh
RUN chmod +x /start-server.sh

# Use the script to start the server
EXPOSE 8000
CMD ["/start-server.sh"]
