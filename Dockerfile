# Use a base image with Linux installed
FROM ubuntu:22.04

ENV WORKDIR /workdir

WORKDIR $WORKDIR

# Install necessary packages
RUN apt-get update \
  && apt-get install -y bash \
  && apt-get install -y python3-pip \
  && pip install --upgrade pip \
  && rm -rf /var/lib/apt/lists/*


# Set the default command to start bash
CMD ["/bin/bash"]
