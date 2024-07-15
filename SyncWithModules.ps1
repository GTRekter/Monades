
$baseDir = "C:\Users\porta\OneDrive\Desktop\Monades\ncloud"
Set-Location -Path $baseDir
function Process-Subdirectory {
    param (
        [string]$subDir
    )

    # Change to the subdirectory
    Set-Location -Path $subDir
    Write-Debug "Processing subdirectory: $subDir"

    # Trigger terraform fmt --recursive
    terraform fmt --recursive
    Write-Output "Ran 'terraform fmt --recursive' in $subDir"

    # Trigger terraform-docs markdown table .
    terraform-docs markdown table . | Out-File -FilePath "README.md"
    Write-Output "Generated README.md with 'terraform-docs markdown table .' in $subDir"

    # Extract base folder name and sub folder name for repo creation
    $relativePath = $subDir.Substring($baseDir.Length + 1)
    $pathParts = $relativePath.Split('\')
    $baseFolderName = $pathParts[0] -replace '_', '-'
    $subFolderName = $pathParts[1]
    if ($null -ne $subFolderName) {
        $repoDescription = "Terraform module to create $($baseFolderName -replace '-', ' ') resources for the $subFolderName configuration"
        $subFolderName = "-$subFolderName" 
    }
    else {
        $repoDescription = "Terraform module to create $($baseFolderName -replace '-', ' ') resources"
    }
    # Define the repository name and description
    $repoName = "terraform-ncloud-$baseFolderName$subFolderName"
    $repoHomepage = "https://registry.terraform.io/modules/terraform-navercloudplatform-modules/$baseFolderName$subFolderName/ncloud"
    Write-Debug "Repository name: $repoName"
    Write-Debug "Repository description: $repoDescription"
    Write-Debug "Repository homepage: $repoHomepage"

    Write-Debug "Create the repository in the GitHub organization"
    gh repo create "terraform-navercloudplatform-modules/$repoName" --public -d "$repoDescription" --disable-wiki --homepage "$repoHomepage" --gitignore "Terraform"
    Write-Output "Created GitHub repository: terraform-navercloudplatform-modules/$repoName"

    git init
    git remote add origin "https://github.com/terraform-navercloudplatform-modules/$repoName.git"
    git config user.email "porta.ivan@outlook.com"
    git config user.name "Ivan Porta (GTRekter)"
    git checkout -b main
    git pull origin main --allow-unrelated-histories --no-edit
    git add .
    git commit -m "Initial commit"
    git push origin main
    Write-Output "Pushed code to GitHub repository: https://github.com/terraform-navercloudplatform-modules/$repoName"

    Write-Debug "Create a new release in the GitHub repository"
    gh release create v1.0.0 --generate-notes
    Write-Output "Created a new release in the GitHub repository: $repoName"

    Set-Location -Path $baseDir
    Write-Output "Changed back to base directory: $baseDir"
}

function Process-TwoLevelDirectories {
    param (
        [string]$directory
    )

    # Get immediate subdirectories
    Get-ChildItem -Path $directory -Directory | ForEach-Object {
        $firstLevelSubDir = $_.FullName
        $hasSubSubDirs = (Get-ChildItem -Path $firstLevelSubDir -Directory | Measure-Object).Count -gt 0
        if ($hasSubSubDirs) {
            # Process subdirectories within the immediate subdirectories
            Get-ChildItem -Path $firstLevelSubDir -Directory | ForEach-Object {
                $secondLevelSubDir = $_.FullName
                try {
                    Process-Subdirectory -subDir $secondLevelSubDir
                }
                catch {
                    Write-Error "Stopping further processing due to error in directory: $secondLevelSubDir"
                    break
                }
            }
        } else {
            try {
                Process-Subdirectory -subDir $firstLevelSubDir
            }
            catch {
                Write-Error "Stopping further processing due to error in directory: $firstLevelSubDir"
                break
            }
        }
    }
}

# Start processing from the base directory
Process-TwoLevelDirectories -directory $baseDir