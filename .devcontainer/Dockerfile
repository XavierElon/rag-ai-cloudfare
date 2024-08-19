# See here for image contents: https://github.com/microsoft/vscode-dev-containers/tree/v0.234.0/containers/typescript-node/.devcontainer/base.Dockerfile

ARG VARIANT="22-bullseye"
FROM mcr.microsoft.com/vscode/devcontainers/typescript-node:${VARIANT}

# Install pnpm
RUN curl -fsSL https://get.pnpm.io/install.sh | SHELL=$(which bash) bash -

# Add pnpm to PATH for all users
RUN echo 'export PATH="/root/.local/share/pnpm:$PATH"' >> /etc/bash.bashrc

RUN apt-get update && apt-get install -y \
    git \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# Set up git configuration
RUN git config --global user.email "xavierh93@hotmail.com" \
    && git config --global user.name "Xavier Elon"

# Verify pnpm installation
RUN /root/.local/share/pnpm/pnpm --version

# Setup SSH
RUN mkdir -p /root/.ssh && chmod 700 /root/.ssh && ssh-keyscan github.com >> /root/.ssh/known_hosts
