#!/bin/bash
# Script Name: employee_login.sh
# Description: This script handles the login process for employees, verifying their credentials.

# Dummy employee data
employees=("Alice" "Bob" "Charlie")
password="password"

clear
echo "--------------------------------------------"
echo "| EMPLOYEE LOGIN                           |"
echo "--------------------------------------------"
echo -n "Enter your username: "
read username
echo -n "Enter your password: "
read -s userpass
echo

# Validate username and password
authenticated=false
for emp in "${employees[@]}"; do
    if [ "$username" == "$emp" ] && [ "$userpass" == "$password" ]; then
        authenticated=true
        break
    fi
done

if $authenticated; then
    ./employee_menu.sh
else
    echo "Authentication failed. Please try again."
fi
