#!/usr/bin/env bash
set -e

# Detect OS
OS="$(uname -s)"

# Install Git
if ! command -v git &>/dev/null; then
  echo "Installing Git..."
  /bin/bash -c sudo apt install git
else
  echo "✅ Git already installed."

echo "✅ Git installed and ready"

# Ensure Git is in PATH
if ! command -v git &>/dev/null; then
  echo "Git installation failed or not in PATH."
  exit 1
fi

# Install Homebrew (works for both macOS and Linux)
if ! command -v brew &>/dev/null; then
  echo "Installing Homebrew..."
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  echo 'eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"' >>"$HOME/.bashrc"
  echo 'eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"' >>"$HOME/.zprofile"
  eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
fi

# Ensure brew is in PATH
if ! command -v brew &>/dev/null; then
  echo "Homebrew installation failed or not in PATH."
  exit 1
fi

echo "✅ Homebrew installed and ready."

# Install Ansible via Brew
if ! command -v ansible &>/dev/null; then
  echo "Installing Ansible..."
  brew install ansible
else
  echo "✅ Ansible already installed."
fi

# Run setup.yml
echo "Running Ansible playbook..."
ansible-playbook setup.yml -K -vv
