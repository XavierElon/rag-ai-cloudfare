#!/bin/bash

# Performs setup tasks _after_ the .devcontainer Docker container is created.

# Install node dependencies
sudo pnpm install
sudo pnpm 