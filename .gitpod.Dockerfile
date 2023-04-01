FROM ubuntu:latest

RUN apt-get update && apt upgrade -y && apt-get install -y git build-essential cmake valgrind ninja-build ccache cppcheck apt-transport-https curl wget gnupg gdb sudo python3-pip
RUN curl -fsSL https://bazel.build/bazel-release.pub.gpg | gpg --dearmor >bazel-archive-keyring.gpg && \
     mv bazel-archive-keyring.gpg /usr/share/keyrings && \
    echo "deb [arch=amd64 signed-by=/usr/share/keyrings/bazel-archive-keyring.gpg] https://storage.googleapis.com/bazel-apt stable jdk1.8" | tee /etc/apt/sources.list.d/bazel.list
RUN apt update && apt install -y bazel-5.1.0 && apt autoclean -y && apt autoremove -y
RUN ln -s /usr/bin/bazel-5.1.0 /usr/bin/bazel
RUN pip3 install conan

# Create the gitpod user. UID must be 33333.
RUN useradd -l -u 33333 -G sudo -md /home/gitpod -s /bin/bash -p gitpod gitpod

USER gitpod

#RUN echo 'export CC=clang' >> /home/gitpod/.bashrc
#RUN echo 'export CC=gcc' >> /home/gitpod/.bashrc

#RUN echo 'export CCX=clang++' >> /home/gitpod/.bashrc
#RUN echo 'export CCX=g++' >> /home/gitpod/.bashrc