Steps to install Terragrunt v0.68 on Ubuntu, follow these steps:

Step 1: Update the package list

sudo apt update

Step 2: Install dependencies, ensure you have the necessary packages installed:

sudo apt install -y wget unzip

Step 3: Download Terragrunt v0.68

Use the wget command to download the specific version from the official releases:

wget https://github.com/gruntwork-io/terragrunt/releases/download/v0.68.0/terragrunt_linux_amd64

Step 4: Move and grant execution permissions

Move the downloaded binary to /usr/local/bin/ and make it executable:

sudo mv terragrunt_linux_amd64 /usr/local/bin/terragrunt
sudo chmod +x /usr/local/bin/terragrunt

Step 5: Verify the installation

Check if the installation was successful by verifying the version:

terragrunt --version