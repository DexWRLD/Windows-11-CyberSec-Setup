# Install WSL2
echo "Installing WSL2..."
wsl --install || { echo "WSL2 installation failed!"; exit 1 }

# Install PowerShell tools (Oh My Posh, PSReadLine)
echo "Installing PowerShell tools..."
winget install JanDeDobbeleer.OhMyPosh -s winget || { echo "Oh My Posh installation failed!"; exit 1 }
Install-Module -Name PSReadLine -Force || { echo "PSReadLine installation failed!"; exit 1 }

# Install VirtualBox
echo "Installing VirtualBox..."
winget install Oracle.VirtualBox -s winget || { echo "VirtualBox installation failed!"; exit 1 }

# Install Docker Desktop
echo "Installing Docker Desktop..."
winget install Docker.DockerDesktop -s winget || { echo "Docker Desktop installation failed!"; exit 1 }

# Install Cyber Security Tools
echo "Installing Cyber Security Tools..."
winget install WiresharkFoundation.Wireshark -s winget || { echo "Wireshark installation failed!"; exit 1 }
winget install nmap -s winget || { echo "Nmap installation failed!"; exit 1 }
winget install Rapid7.Metasploit -s winget || { echo "Metasploit installation failed!"; exit 1 }

# Additional tools
echo "Installing additional tools..."
winget install Microsoft.PowerShell -s winget || { echo "PowerShell installation failed!"; exit 1 }
winget install HashiCorp.Terraform -s winget || { echo "Terraform installation failed!"; exit 1 }

echo "All installations completed!"
