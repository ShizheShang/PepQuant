FROM ubuntu:22.04

WORKDIR /app

RUN apt-get update \
    && DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends \
       build-essential \
       g++-12 \
       cmake \
       git \
       wget \
       ca-certificates \
       pkg-config \
       libbz2-dev \
       zlib1g-dev \
       liblz4-dev \
       libseqan3-dev \
    && rm -rf /var/lib/apt/lists/*

RUN update-alternatives --install /usr/bin/g++ g++ /usr/bin/g++-12 100

COPY . /app

# Build will succeed once the required ggcat static libraries are available in ./lib
# If ./lib is not present, the container can still be used to install dependencies and run `make` later.

CMD ["bash"]
