# GitHub Repository Read-Only Access Auditor

## Overview

In large teams and organizations, GitHub repositories are often shared with multiple collaborators.  
Over time, it becomes difficult to track **who has access**, **what level of access they have**, and **whether that access is still required**.

This project provides a **shell-based automation** to identify **GitHub users who have read-only (pull) access** to a specific repository using the **GitHub REST API**.

The script helps DevOps and Security teams perform:
- Access audits
- Least-privilege verification
- Repository governance checks

---

## Problem Statement

Manually checking GitHub repository collaborators via the UI is:
- Time-consuming
- Error-prone
- Not scalable for multiple repositories

There is a need for a **scripted, repeatable, and secure way** to:
- Query GitHub repositories
- Identify users with **read-only access**
- Use automation instead of manual checks

---

## Solution Approach

This project uses:
- **GitHub REST API** to fetch repository collaborators
- **Bash scripting** for automation
- **Environment variables** for secure authentication
- **`jq`** to parse JSON responses and filter users with pull access

---

## Prerequisites

- Linux system (Ubuntu recommended)
- `curl` and `jq` installed
- GitHub Personal Access Token (PAT) with **repo read access**

---

## Project Execution Guide

This project was executed in a **Linux environment** by connecting to an **AWS EC2 instance via SSH**.

---

This project was executed in a **Linux environment** by connecting to an **AWS EC2 instance via SSH**.

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

## Key Learnings

- Secure GitHub API authentication using environment variables
- Bash scripting with functions and argument validation
- Parsing JSON responses using jq
- Automating GitHub access audits via shell scripting

## Future Enhancements

- Support for scanning multiple repositories
- Export results to CSV or JSON
- Organization-wide access auditing
- Integration with cron jobs or CI pipelines

## Interview Talking Points 🪙

- Why least-privilege access matters
- How GitHub permissions are structured
- Why environment variables are preferred over hardcoding
- How automation improves security and governance
