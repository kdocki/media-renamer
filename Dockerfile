# base image
FROM ubuntu:24.04

RUN apt-get update -y

# install exiftool
RUN apt-get install -y libimage-exiftool-perl

RUN apt-get clean && rm -rf /var/lib/apt/lists/*

COPY format /usr/bin/format
RUN chmod +x /usr/bin/format

COPY rename /usr/bin/rename
RUN chmod +x /usr/bin/rename

ENTRYPOINT ["/usr/bin/rename"]

# workdir
WORKDIR /tmp
