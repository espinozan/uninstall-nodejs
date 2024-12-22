#!/bin/bash

# Uninstall Node.js and npm
echo "Uninstalling Node.js and npm..."
# Remove nodejs and npm packages along with their configuration files
sudo apt-get remove --purge nodejs npm -y

# Remove unnecessary dependencies
echo "Removing unnecessary dependencies..."
# Automatically remove packages that were installed as dependencies but are no longer required
sudo apt-get autoremove -y

# Clean up package cache
echo "Cleaning up package cache..."
# Clear local repository of retrieved package files
sudo apt-get clean

# Remove Node.js configuration files and binaries
echo "Removing Node.js configuration files..."
# Delete globally installed npm packages, node binaries, and any global installation directories
sudo rm -rf /usr/local/lib/node_modules
sudo rm -rf /usr/local/include/node
sudo rm -rf /usr/local/bin/node
sudo rm -rf /usr/local/bin/npm

# Check and remove any customized installations of Node.js in user directories
echo "Removing potential custom installations of Node.js..."
# Delete npm and nvm configuration and related files in the user's home directory
sudo rm -rf ~/.npm
sudo rm -rf ~/.nvm
sudo rm -rf /opt/node

# Check if nvm (Node Version Manager) is installed and remove Node.js managed by nvm
if command -v nvm &> /dev/null; then
  echo "Uninstalling Node.js installed via nvm..."
  # Deactivate any active Node version managed by nvm
  nvm deactivate
  # Uninstall the LTS version or any active version of Node.js managed by nvm
  nvm uninstall --lts
  # Unload nvm to ensure it's no longer used
  nvm unload
else
  echo "nvm not found, skipping nvm-specific uninstall steps."
fi

# Verify that Node.js has been successfully uninstalled
echo "Verifying uninstallation..."
# Check if node command still exists
if command -v node &> /dev/null; then
  echo "Node.js is still installed. Please try again."
else
  echo "Node.js has been successfully uninstalled."
fi

# Verify that npm has been successfully uninstalled
# Check if npm command still exists
if command -v npm &> /dev/null; then
  echo "npm is still installed. Please try again."
else
  echo "npm has been successfully uninstalled."
fi

# Final message indicating the script has completed
echo "Uninstallation process complete."
