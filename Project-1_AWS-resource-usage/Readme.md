# 📊 AWS Resource Usage Tracker (Shell + Cron)

🚧 **Status:** Learning / Active Practice Project

---

## 📌 Overview

`aws_resource_report.sh` is a shell script designed to track basic AWS resource usage using the **AWS CLI**.  
It automates reporting for common AWS services and can be scheduled using **cron jobs** for periodic execution.

This project demonstrates:
- Shell scripting fundamentals
- AWS CLI usage
- Linux cron job automation
- Log management
- Real-world DevOps monitoring mindset

---

## 🛠 Prerequisites

Before running the script, ensure the following:

1. Ubuntu / Linux system
2. System updated
   sudo apt-get update
3. AWS CLI installed: aws --version
    If not installed: sudo apt install awscli -y
4. If not installed: sudo apt install awscli -y

## 🚀 How to Run

Step 1: Make the script executable
chmod +x aws_resource_report.sh

Step 2: Test manually
./aws_resource_report.sh

Step 3: Verify logs
cat /var/log/aws_resource_report.log

### ⏰ Automate with Cron Job
Step 4: Open crontab
crontab -e

a) Choose an editor
Select:
1. /bin/nano  <---- easiest

b) Add cron job (inside nano)
Example: Run daily at 2 AM
0 2 * * * /home/ubuntu/aws_usage.sh >> /home/ubuntu/aws_cron.log 2>&1

| Part	| Meaning |
| :--- | :--- |
| 0 2 * * * | Runs every day at 2:00 AM |
| /home/ubuntu/aws_usage.sh | Script path |
| >> | Append logs |
| aws_cron.log	| Cron execution logs |
| 2>&1	| Capture errors |

c) Save & exit nano
Press CTRL + O → Enter (save)
Press CTRL + X (exit)
You should see:
crontab: installing new crontab

d) Verify cron entry
crontab -l

## 📚 Key Learnings

Automated AWS resource reporting using shell scripting

Hands-on experience with AWS CLI

Cron job scheduling and verification

Log handling and troubleshooting

Production-style automation approach

## 🔮 Future Enhancements

Add resource count summaries

Export reports in CSV / JSON format

Add email notifications

Integrate alerts with Slack or CloudWatch

## 👨‍💻 Author

Abhay Raj Singh Rathore\
Cloud & DevOps Engineer | AWS | Shell | CI/CD
