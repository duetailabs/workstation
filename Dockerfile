# Customize the default cloud workstation image
FROM us-central1-docker.pkg.dev/cloud-workstations-images/predefined/code-oss:latest

# Install packages
RUN sudo apt update \
 && sudo apt install -y zsh python3-venv libpq-dev \
 && apt-get clean

# Install ZSH plugins
ENV ZSH=/opt/workstation/zsh

RUN git clone https://github.com/zsh-users/zsh-autosuggestions /opt/workstation/zsh/plugins/zsh-autosuggestions \
  && git clone https://github.com/zdharma-zmirror/fast-syntax-highlighting.git /opt/workstation/zsh/plugins/fast-syntax-highlighting \
  && git clone https://github.com/zsh-users/zsh-completions.git /opt/workstation/zsh/plugins/zsh-completions \
  && git clone https://github.com/spaceship-prompt/spaceship-prompt.git  /opt/workstation/zsh/themes/spaceship

# Runtime customization scripts
COPY startup-scripts/ /etc/workstation-startup.d/
RUN chmod +x /etc/workstation-startup.d/*