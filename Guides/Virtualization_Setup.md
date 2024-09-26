# Setting Up Virtualization Tools: VirtualBox and VMware

Running virtual machines (VMs) is crucial for safely experimenting with Cyber Security tools and DevOps environments. This guide covers the installation and configuration of **VirtualBox** and **VMware** on Windows 11.

## Step 1: Install VirtualBox

VirtualBox is a free and open-source tool for running virtual machines.

1. Download the latest version of VirtualBox from the official website: [VirtualBox Downloads](https://www.virtualbox.org/wiki/Downloads)
2. Once downloaded, run the installer and follow the on-screen instructions.
3. After installation, you can create a virtual machine by clicking **New** and selecting the operating system you'd like to install (e.g., **Kali Linux**, **Ubuntu**, **Windows Server**).

### VirtualBox Guest Additions (Optional)

To improve VM performance and functionality (e.g., shared clipboard, drag-and-drop), install **Guest Additions**:

1. Start the virtual machine.
2. Go to **Devices > Insert Guest Additions CD image...**.
3. Open a terminal in the VM and run:

   ```bash
   sudo apt install virtualbox-guest-utils
   ```

## Step 2: Install VMware Workstation Player (Optional)

VMware Workstation Player is another excellent virtualization tool. It’s free for personal use.

1. Download VMware Workstation Player from the official website: [VMware Downloads](https://www.vmware.com/products/workstation-player.html)
2. Install VMware by running the installer and following the prompts.
3. After installation, open VMware Workstation Player, click **Create a New Virtual Machine**, and follow the wizard to install the desired OS.

### VMware Tools (Optional)

VMware Tools enhances the performance of your VMs, similar to VirtualBox Guest Additions:

1. Start the VM and go to **Player > Manage > Install VMware Tools**.
2. Inside the VM, mount the tools and run the installer.

## Step 3: Setup a Pentesting Lab (Optional)

Once your virtualization tools are installed, you can create a virtualized pentesting lab by running multiple VMs, such as:

- **Kali Linux** (attacker)
- **Metasploitable** (vulnerable machine for exploitation)
- **Windows Server** or **Ubuntu** (target machines)

### Network Configuration

You can configure virtual networks between VMs to simulate different scenarios:

- **Host-only** network for isolation.
- **NAT** or **Bridged** networking to give VMs internet access.

You're now ready to run virtual machines on your Windows 11 system using either VirtualBox or VMware. Start setting up your pentesting or DevOps environments!
