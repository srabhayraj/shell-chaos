#!/bin/bash

########################################

#About: This script will provide the usernames who has read-only access to the selected repository.
#Input: Before running the script, export your username and export your github token. After that while running the script provide 2 parameters, owner or organization name, and second is the repository name.
#Author: Abhay Raj Singh Rathore
#Date: 28th Jan 2026
#Version: v1

############################################

#This function is created to let user know to give all arguments if user doesn't give it.
#helper()

# Github API URL
API_URL="https://api.github.com"

# Github username and personal access token
USERNAME=$username
TOKEN=$GH_TOKEN

#User and reposiory information
REPO_OWNER=$1
REPO_NAME=$2

# Function to make a GET request to the Github API
function github_api_get {
        local endpoint="$1"
        local url="${API_URL}/${endpoint}"

        #Send a GET request to the Github API with authentication
        curl -s -u "${USERNAME}:${TOEKN}" "$url"
}

#Function to list users with read access to the repository
function list_users_with_read_access {
        local endpoint="repos/${REPO_OWNER}/${REPO_NAME}/collaborators"

        #Fetch the list of collaborators on the repository
        collaborators="$(github_api_get "$endpoint" | jq -r '.[] | select(.permissions.pull == true) | .login')"
        #select(.permissions.pull == true) this logic is used to print the username who has read access, in place if permissions.pull==true we can also use permission.admin==false that will also work the same, and we use .login to get or parse the username only not the complete json

        #Display the list of collaborators with the read access
        if [[ -z "$collaborators" ]]; then
                echo "No users with read access found for ${REPO_OWNER}/${REPO_NAME}."
        else
                echo "Users with read access to ${REPO_OWNER}/${REPO_NAME}:"
                echo "$collaborators"
        fi

}

#function helper{
#       expected_cmd_args=2
#       if [ $# -ne #expected_cmd_args]; then
#               echo "Please re-execute the script with required command line arguments"
#       fi

#Main script
echo "Listing users with read access to ${REPO_OWNER}/${REPO_NAME}..."
list_users_with_read_access

#End of the script