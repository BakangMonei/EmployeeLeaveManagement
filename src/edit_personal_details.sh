#!/bin/bash
# Script Name: edit_personal_details.sh
# Description: This script allows employees to edit their personal details such as names and dates of birth.


# Dummy employee data
employees=("Alice" "Bob" "Charlie")
password="password"

clear
echo "--------------------------------------------"
echo "| EDIT PERSONAL DETAILS                    |"
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
    # Fetch employee's current details
    # You can replace this with actual data retrieval logic
    current_name="Alice"
    current_dob="1990-01-01" # Example date of birth format

    echo "Current Name: $current_name"
    echo -n "Enter new name (leave blank to keep current): "
    read new_name
    if [ -n "$new_name" ]; then
        current_name="$new_name"
        echo "Name updated successfully."
    fi

    echo "Current Date of Birth: $current_dob"
    echo -n "Enter new date of birth (YYYY-MM-DD) (leave blank to keep current): "
    read new_dob
    if [ -n "$new_dob" ]; then
        current_dob="$new_dob"
        echo "Date of Birth updated successfully."
    fi

    # Save updated details (you can replace this with actual data storage logic)
    # For demonstration, let's just display the updated details
    echo "Updated Details:"
    echo "Name: $current_name"
    echo "Date of Birth: $current_dob"
else
    echo "Authentication failed. Please try again."
fi

