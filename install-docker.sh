#!/bin/bash

echo "🛠️ Updating system packages..."
sudo apt update && sudo apt upgrade -y

echo "📦 Installing Docker via official convenience script..."
curl -fsSL https://get.docker.com -o get-docker.sh
sudo sh get-docker.sh
rm get-docker.sh

echo "👤 Adding user '$USER' to the Docker group..."
sudo usermod -aG docker $USER

echo "🔁 Enabling Docker to start on boot..."
sudo systemctl enable docker

echo "✅ Docker installation complete!"

echo ""
echo "ℹ️ Please log out and log back in (or reboot) for Docker group changes to take effect."
echo "You can reboot now with: sudo reboot"
