# Customizing PowerShell for Cyber Security and DevOps

In this guide, we'll enhance PowerShell by customizing its appearance and functionality to suit Cyber Security and DevOps tasks.

## Step 1: Install PowerShell Core (Optional)

While Windows includes PowerShell by default, you can install **PowerShell Core**, a cross-platform version.

1. Open **PowerShell** as Administrator.
2. Run the following command:

   ```bash
   winget install --id Microsoft.Powershell --source winget
   ```

## Step 2: Install Oh My Posh

1. Run the following command to install Oh My Posh:

   ```bash
   winget install JanDeDobbeleer.OhMyPosh -s winget
   ```

2. To verify the installation:

   ```bash
   oh-my-posh --version
   ```

## Step 3: Customize PowerShell Theme

1. Choose a theme from the official [Oh My Posh theme gallery](https://ohmyposh.dev/docs/themes).
2. Set the theme using this command (replace `theme-name` with your chosen theme):

   ```bash
   notepad $PROFILE
   ```

   In the profile file, add this line:

   ```bash
   oh-my-posh init pwsh --config "$env:POSH_THEMES_PATH\theme-name.omp.json" | Invoke-Expression
   ```

## Step 4: Install PSReadLine for Better Autocompletion

1. Run this command to install PSReadLine:

   ```bash
   Install-Module -Name PSReadLine -Force
   ```

2. Add syntax highlighting and autocompletion:

   ```bash
   Set-PSReadLineOption -EditMode Windows
   ```

## Step 5: Enable Execution Policy

To run your scripts without issues, set the execution policy to remote signed:

   ```bash
   Set-ExecutionPolicy RemoteSigned -Scope CurrentUser
   ```

## Additional PowerShell Modules for Cyber Security

- **PowerSploit**: A popular post-exploitation framework.

   ```bash
   Install-Module -Name PowerSploit -Force
   ```

- **Nishang**: A framework for offensive PowerShell usage.

   ```bash
   Install-Module -Name Nishang -Force
   ```

You're now set up with a powerful, customized PowerShell environment for Cyber Security and DevOps tasks!
