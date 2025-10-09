#!/usr/bin/env bash
set -e

# Detect OS
OS="$(uname -s)"

if [[ "$OS" == "Linux" ]]; then
  # On Linux: Install Git first (required for Homebrew), then Homebrew
  if ! command -v git &>/dev/null; then
    echo "Installing Git..."
    sudo apt install -y git
  else
    echo "✅ Git already installed."
  fi

  # Ensure Git is in PATH
  if ! command -v git &>/dev/null; then
    echo "Git installation failed or not in PATH."
    exit 1
  fi

  echo "✅ Git installed and ready"

  # Install Homebrew
  if ! command -v brew &>/dev/null; then
    echo "Installing Homebrew..."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    echo 'eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"' >>"$HOME/.bashrc"
    echo 'eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"' >>"$HOME/.zprofile"
    eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
  fi

elif [[ "$OS" == "Darwin" ]]; then
  # On macOS: Install Homebrew first, then Git via Homebrew
  if ! command -v brew &>/dev/null; then
    echo "Installing Homebrew..."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    # Setup brew for macOS (Apple Silicon or Intel)
    if [[ -f "/opt/homebrew/bin/brew" ]]; then
      eval "$(/opt/homebrew/bin/brew shellenv)"
    else
      eval "$(/usr/local/bin/brew shellenv)"
    fi
  fi

  # Ensure brew is in PATH
  if ! command -v brew &>/dev/null; then
    echo "Homebrew installation failed or not in PATH."
    exit 1
  fi

  echo "✅ Homebrew installed and ready."

  # Now install Git via Homebrew
  if ! command -v git &>/dev/null; then
    echo "Installing Git..."
    brew install git
  else
    echo "✅ Git already installed."
  fi

  # Ensure Git is in PATH
  if ! command -v git &>/dev/null; then
    echo "Git installation failed or not in PATH."
    exit 1
  fi

  echo "✅ Git installed and ready"

else
  echo "Unsupported OS: $OS"
  exit 1
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
