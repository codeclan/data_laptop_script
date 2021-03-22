Write-Host @"

-----------------------------------------------------------------------------

You're running the CodeClan Data Analysis setup script for Windows laptops.
If that isn't what you meant to do press ctrl + c to stop the script.

This script will install the necessary software for the course using the chocolatey package manager.
If you have any of these programs installed already they will be updated to the latest version.
If you already have the latest version of a program the script will skip it with a warning message.

-----------------------------------------------------------------------------

"@


# Install Chocolatey

Write-Output "Installing Chocolatey Package Manager..."

[System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))



# Helper functions

function Install-FromChocolately {

    param(
        $Application
    )

    $applicationName = $Application.Name

    Write-Output "Installing $applicationName..."

    choco install $Application.PackageName -y -r

}



# Apps to be installed

$installationList = @(
    @{
        Name = "Chrome"
        PackageName = "googlechrome"
    },
    @{
        Name = "Slack"
        PackageName = "slack"
    },
    @{
        Name = "Zoom"
        PackageName = "zoom"
    },
    @{
        Name = "Git"
        PackageName = "git"
    },
    @{
        Name = "Github Desktop"
        PackageName = "github-desktop"
    },
    @{
        Name = "RStudio"
        PackageName = "r.studio"
    },
    @{
        Name = "DBeaver"
        PackageName = "dbeaver"
    },
    @{
        Name = "Insomnia"
        PackageName = "insomnia-rest-api-client"
    },
    @{
        Name = "Atom"
        PackageName = "atom"
    },
    @{
        Name = "Anaconda"
        PackageName = "anaconda3"
    },
    @{
        Name = "Markdown Edit"
        PackageName = "markdown-edit"
    },
    @{
        Name = "Java8"
        PackageName = "jdk8"
    }
)


# R installation - needs specific version

Write-Output "Installing R..."

choco install r --version 3.6.0 -y -r



# App installation

$installationList | foreach {

    Install-FromChocolately $_

}



# refreshenv to add Java to PATH

Write-Output "Adding Java to PATH"

refreshenv


# Run final installation check 