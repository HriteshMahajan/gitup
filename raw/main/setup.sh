#!/bin/bash

# Automatically make this script executable
chmod +x $0

# Define constants
REPO_URL="https://github.com/HriteshMahajan/gitup"
INSTALL_DIR="${HOME}/.local/bin"
SCRIPT_NAME="gitup"

# Display a message
echo "Starting the setup process for GitUp CLI..."

# Update Homebrew and install dependencies
echo "Updating Homebrew and installing dependencies..."
brew update
brew install jq git

# Clone the repository
if [ ! -d "$HOME/gitup" ]; then
  echo "Cloning the repository..."
  git clone "$REPO_URL" "$HOME/gitup"
else
  echo "Repository already cloned."
fi

# Navigate to the repository directory
cd "$HOME/gitup" || { echo "Failed to navigate to $HOME/gitup"; exit 1; }

# Build or copy the CLI tool
echo "Installing the CLI tool..."
mkdir -p "$INSTALL_DIR"
cp "$SCRIPT_NAME" "$INSTALL_DIR/$SCRIPT_NAME"

# Make sure the CLI tool is executable
chmod +x "$INSTALL_DIR/$SCRIPT_NAME"

# Verify installation
if command -v "$SCRIPT_NAME" >/dev/null 2>&1; then
  echo "$SCRIPT_NAME has been installed successfully and is available in your PATH."
else
  echo "Installation failed. Please ensure $INSTALL_DIR is in your PATH."
fi

echo "Setup complete."
