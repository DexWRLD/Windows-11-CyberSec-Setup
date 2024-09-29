# Customizing PowerShell for Cyber Security and DevOps

In this guide, we'll enhance PowerShell by customizing its appearance and functionality to suit Cyber Security and DevOps tasks.

## Step 1: Install PowerShell Core (Optional)

While Windows includes PowerShell by default, you can install **PowerShell Core**, a cross-platform version.

1. Open **PowerShell** as Administrator.
2. Run the following command:

   ```bash
   winget install --id Microsoft.Powershell --source winget
   ```
   
If you happen to run into an error like this one:

   ```bash
   Failed when opening source(s); try the 'source reset' command if the problem persists.
   An unexpected error occurred while executing the command:
   0x8a15000f : Data required by the source is missing
   ```
Then run this command to fix the said issue:

   ```bash
   Add-AppxPackage -Path https://cdn.winget.microsoft.com/cache/source.msix
   ```

## Step 2: Install Oh My Posh

1. Run the following command to install Oh My Posh:

   ```bash
   winget install JanDeDobbeleer.OhMyPosh -s winget
   ```

2. Then run:

   ```bash
   scoop install oh-my-posh
   ```

3. For further information on that, you can use this great tutorial by Adam Driscoll to further customize it and use it. [Link to the video](https://www.youtube.com/watch?v=OL9Mr4dzIWU&t=32s) ORRR you can continue with Step 3, both are kinda the same.

## Step 3: Customize PowerShell Theme

1. Choose a theme from the official [Oh My Posh theme gallery](https://ohmyposh.dev/docs/themes).
2. Set the theme using this command (replace `theme-name` with your chosen theme):

   ```bash
   notepad $PROFILE
   ```

   IF you are getting an error, it might be because we have not created the PROFILE file, use this command in that case:

   ```bash
   New-Item -Path $PROFILE -Type File -Force
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
