# Use the latest Arch Linux base image
FROM archlinux:latest

ENV CC=/usr/bin/clang \
  CXX=/usr/bin/clang++ \
  AR=/usr/bin/llvm-ar \
  AS=/usr/bin/llvm-as

RUN pacman -Syu --noconfirm \
  && pacman -S --noconfirm base-devel clang llvm fish git cmake extra-cmake-modules ninja bison boost linux-headers

SHELL ["/usr/bin/fish", "-c"]

RUN pacman -Rns --noconfirm $(pacman -Qtdq) \
  && pacman -Sc --noconfirm

ARG USERNAME=c-cpp-developer
ARG USER_UID=1000
ARG USER_GID=$USER_UID

RUN groupadd --gid $USER_GID $USERNAME \
  && useradd --uid $USER_UID --gid $USER_GID -m $USERNAME \
  && echo "$USERNAME ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers.d/$USERNAME

USER $USERNAME

WORKDIR /home/$USERNAME

CMD ["fish"]
