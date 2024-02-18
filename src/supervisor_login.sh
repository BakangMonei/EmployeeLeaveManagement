#!/bin/bash
# Script Name: supervisor_login.sh
# Description: This script handles the login process for supervisors, verifying their credentials.

# Dummy supervisor credentials
supervisor_username="supervisor"
supervisor_password="password"

clear
echo "--------------------------------------------"
echo "| SUPERVISOR LOGIN                         |"
echo "--------------------------------------------"
echo -n "Enter your username: "
read username
echo -n "Enter your password: "
read -s password
echo

# Validate username and password
if [ "$username" == "$supervisor_username" ] && [ "$password" == "$supervisor_password" ]; then
    echo "Login successful. Welcome, Supervisor!"
    ./supervisor_menu.sh  # If login successful, proceed to supervisor menu
else
    echo "Login failed. Please try again."
fi
