this project i have performed in linux environment by ssh into ec2.
First export the github username
After that create teh github token by going into the developer setting and then export the github token to the terminal

after that clone this repository and go inside the folder where list-users.sh file is present
then make the file executable by chmod +x list-users.sh
then run the script by ./list-users.sh and along with this give the command line arguments 
    first is ownre or oganization name
    second is repo name. 
    so the final command would look like: ./list-users.sh srabhayraj shell-chaos

and at last you will get the usernames who have access to the github repo. 
