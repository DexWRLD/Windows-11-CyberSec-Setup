# Let's create the WSL2_Setup.md file with adjusted markdown syntax

## Installing Windows Subsystem for Linux (WSL2) on Windows 11

WSL2 enables running Linux distributions directly on Windows. Follow the steps below to install WSL2 and set up Kali Linux or Ubuntu.

### Step 1: Enable WSL and Virtual Machine Feature

1. Open **PowerShell** as Administrator.

2. Run the following commands:

   ```bash
   wsl --install
   ```

   This installs the default Linux distribution (Ubuntu) and enables the necessary features.

### Step 2: Set WSL Version to 2

1. Check the current WSL version:

   ```bash
   wsl -l -v
   ```

2. If it's set to WSL 1, upgrade it:

   ```bash
   wsl --set-version Ubuntu 2
   ```

### Step 3: Install a Preferred Linux Distribution

- You can install other distributions such as **Kali Linux**:

  ```bash
  wsl --install -d kali-linux
  ```

### Step 4: Update and Upgrade Linux

Once installed, open the Linux distribution and run:

   ```bash
   sudo apt update && sudo apt upgrade -y
   ```

### Additional Tools

- For an enhanced terminal experience, consider installing [Windows Terminal](https://aka.ms/terminal) from the Microsoft Store.
- Install **Oh My Zsh** for better shell functionality:

  ```bash
  sudo apt install zsh
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
  ```

You're now ready to run Linux commands and install pentesting tools on your WSL2 environment!
