
# Windows 11 Setup for Cyber Security and DevOps

This repository provides a complete guide and automation scripts for setting up Windows 11 for Cyber Security and DevOps tasks. Whether you’re a pentester, developer, or security researcher, this project will help you get your environment up and running quickly.

## How to Use

1. **Guides**: Step-by-step instructions on setting up different tools and environments.
2. **Scripts**: Automation scripts for setting up everything in one go.

### Available Guides

- [WSL2 Setup](Guides/WSL2_Setup.md)
- [PowerShell Setup](Guides/PowerShell_Setup.md)
- [Virtualization Tools Setup](Guides/Virtualization_Setup.md)
- [Cyber Security Tools Setup](Guides/CyberSec_Tools.md)
- [DevOps Tools Setup](Guides/DevOps_Tools.md)

### Available Scripts

Run the following PowerShell scripts to automate the setup process.

#### Install All Tools

This script installs essential tools for Cyber Security and DevOps.

```powershell
.\Scripts\install_all_tools.ps1
```

**Instructions:**

1. Open PowerShell as an Administrator.
2. Navigate to the directory where the script is located.
3. Run the script using the command above.

#### Install WSL2 and Related Tools

This script installs WSL2 and key Cyber Security tools.

```powershell
.\Scripts\install_wsl2_and_tools.ps1
```

**Instructions:**

1. Open PowerShell as an Administrator.
2. Navigate to the directory where the script is located.
3. Run the script using the command above.

## Additional Information

- Ensure that Windows Package Manager (`winget`) is installed and up to date before running the scripts.
- The scripts may prompt for administrative permissions during installations.
- Monitor the installation process for any errors.

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for more details.
