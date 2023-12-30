# SPP-Technologies Open Source Project

This repository is a part of the SPP-Technologies open source community. We welcome contributions from developers around the world. In this project, you will be a part of building the website for business representations of SPP Technologies, a Technology Service company. Happy Journey!

## Getting Started

### For Linux & Mac Users:

Download the bash script and run it in any folder where you want to start. The script will automatically open Visual Studio Code for you and set up the environment. Make sure you have Visual Studio Code and Git installed and are using a bash shell.

[Download new-contributor-clone.sh](new-contributor-clone.sh)

OR

copy this bash script and run it :
```bash
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

#Run the vscode
code .

```

### For Windows Users:

Make sure you have Python and Visual Studio Code installed. [Download Visual Studio Code](https://code.visualstudio.com/download#) and [Download Python](https://www.python.org/downloads/). Then, run the following Python code inside a bash script:

```bash
# clone_and_start.py

import subprocess

# Clone the repository and navigate to the directory
subprocess.run(["git", "clone", "https://github.com/Sombitpramanik/SPP-Technologies.git"])
subprocess.run(["cd", "SPP-Technologies"])

# Fetch the latest changes
subprocess.run(["git", "fetch"])

# Optionally, pull the latest changes
subprocess.run(["git", "pull"])

# Read creating the initial branch and first commit for the user
name = input("Enter Your Name: ")
feature = input("Enter the Feature you want to work on: ")

# Create and switch to a new branch
subprocess.run(["git", "checkout", "-b", f"feature_contribution_{name}"])

# Create a new README file with a welcome message
with open(f"new_feature_{name}.README.md", "a") as readme:
    readme.write(f"Welcome to the SPP-Technologies open source community, {name}!")

# Stage changes, commit, and push to the new branch
subprocess.run(["git", "add", "."])
subprocess.run(["git", "commit", "-m", f"Initial commit by {name} for feature: {feature}"])
subprocess.run(["git", "push", "-u", "origin", f"feature_contribution_{name}"])

#Run the vscode
subprocess.run(["code", "."])