# Clone the repository and navigate to the directory
git clone https://github.com/Sombitpramanik/SPP-Technologies.git
cd SPP-Technologies

# Fetch the latest changes
git fetch

# Pull the latest changes (optional, but good practice)
git pull

# Read creating the initial branch and first commit for the user
read -p "Enter Your Name: " name
read -p "Enter the Feature you want to work on: " feature

# Create and switch to a new branch
git checkout -b "$feature.$name"

# Create a new README file with a welcome message
echo "Welcome to the SPP-Technologies open source community, $name!" >> $feature.README.md

# Stage changes, commit, and push to the new branch
git add .
git commit -m "Initial commit by $name for feature: $feature"
git push -u origin "$feature.$name"

# Run the vscode 
code .