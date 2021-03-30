FROM ubuntu:20.04 as builder

# Update default packages
RUN apt-get -qq update

# Get Ubuntu packages
RUN apt-get install -y -q \
build-essential \
curl

RUN curl https://sh.rustup.rs -sSf | sh -s -- -y

ENV PATH="/root/.cargo/bin:${PATH}"
RUN curl -sSL https://raw.githubusercontent.com/apollographql/rover/v0.0.4/installers/binstall/scripts/nix/install.sh | sh
ENV PATH="/root/.rover/bin:${PATH}"
CMD ["/bin/bash"]
