# Helper functions & variables

$successCounter = 0
$failCounter = 0

function Test-ChocolateyInstallation {

    param(
        $Application
    )

    $applicationName = $Application.Name

    $installedPackage = choco list $Application.PackageName -lo -r

    if ($installedPackage){
        $Script:successCounter++
        Write-Output "$applicationName installed successfully!"
    } else {
        $Script:failCounter++
        Write-Output "Failed to install $applicationName."
    }

}



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

$installationList | foreach {

    Test-ChocolateyInstallation $_

}

if ($failCounter -gt 0){
    Write-Output "Successfully installed $successCounter apps!"
    Write-Output "$failCounter app(s) failed to install. Please make a note of them from the list above and tell the instructors at your Meet Your Cohort event."
} else {
    Write-Output "All apps installed successfully!"
}