#!/bin/bash

# Ensure pnpm is in the PATH
export PATH="/root/.local/share/pnpm:$PATH"

# Verify pnpm is available
which pnpm
pnpm --version

# Install node dependencies
pnpm install