## Project Execution Guide

This project was executed in a **Linux environment** by connecting to an **AWS EC2 instance via SSH**.

### Prerequisites
- Linux system (Ubuntu recommended)
- `curl` and `jq` installed
- GitHub Personal Access Token (PAT) with **repo read access**

---

### Step 1: Export GitHub Credentials

Export your GitHub username:
```
export username="your_github_username"
```

Create a GitHub Personal Access Token from:
```
GitHub → Settings → Developer Settings → Personal Access Tokens
```
Export the token:
```
export GH_TOKEN="your_github_token"
```
⚠️ Never hardcode credentials inside scripts. Environment variables are used for security.

### Step 2: Clone the Repository
```
git clone https://github.com/<your-username>/<repo-name>.git
cd <repo-name>
```

### Step 3: Make Script Executable
```
chmod +x list-users.sh
```

### Step 4: Run the Script
Execute the script by passing two command-line arguments:
- Repository owner or organization name
- Repository name
```
./list-users.sh srabhayraj shell-chaos
```

### Output
The script returns a list of GitHub users who have read-only (pull) access to the specified repository.
If no read-only users are found, an appropriate message is displayed.
