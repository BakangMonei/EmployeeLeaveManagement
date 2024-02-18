#!/bin/bash
# Script Name: employee_menu.sh
# Description: This script displays the menu options available to employees after successful login.

clear
echo "--------------------------------------------"
echo "| EMPLOYEE MENU                            |"
echo "--------------------------------------------"
echo "| 1. Edit Personal Details                 |"
echo "| 2. Apply for Leave                       |"
echo "| 3. Logout                                |"
echo "--------------------------------------------"
echo -n "Enter your choice: "
read choice

case $choice in
    1) ./edit_personal_details.sh ;;
    2) ./apply_leave.sh ;;
    3) ./main_dashboard.sh ;;
    *) echo "Invalid option. Please select again." ;;
esac
# Path: Assignment2/edit_personal_details.sh