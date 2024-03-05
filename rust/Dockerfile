FROM archlinux:latest

RUN pacman -Syyuu --noconfirm && \
  pacman -S --noconfirm \
  base-devel \
  rustup \
  fish \
  && rm -rf /var/cache/pacman/pkg/*

RUN rustup-init -y && \
  echo 'fish_add_path ~/.cargo/bin' >> ~/.config/fish/conf.d/vars.fish && \
  echo 'fish_add_path ~/.rustup/bin' >> ~/.config/fish/conf.d/vars.fish

RUN chsh -s /usr/bin/fish

ARG USERNAME=rust-dev
ARG USER_UID=1000
ARG USER_GID=$USER_UID

RUN groupadd --gid $USER_GID $USERNAME && \
  useradd --uid $USER_UID --gid $USER_GID --create-home --shell /usr/bin/fish $USERNAME

USER $USERNAME

WORKDIR /home/$USERNAME

CMD ["fish"]
