sudo apt-get update && \
sudo apt-get upgrade && \
sudo apt-get -y --no-install-recommends --allow-unauthenticated install \
    build-essential \
    git \
    zip \
    unzip \
    xz-utils \
    wget \
    curl \
    ca-certificates \
    make \
    bash \
    bc \
    python3 \
    python3-venv \
    nix-bin

# git clone --depth 1 https://github.com/The-OpenROAD-Project/OpenLane.git && \


export PDK="sky130A"
export PDK_ROOT=$(pwd)/Openlane/pdk

cd OpenLane/ && \
sudo make && \
sudo make test && \
sudo make pdk && \
sudo make mount
