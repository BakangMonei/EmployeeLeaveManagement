#!/bin/bash
# Script Name: supervisor_menu.sh
# Description: This script displays the menu options available to supervisors after successful login.


clear
echo "--------------------------------------------"
echo "| SUPERVISOR MENU                          |"
echo "--------------------------------------------"
echo "| 1. View Leave Applications               |"
echo "| 2. Approve Leave Application            |"
echo "| 3. Reject Leave Application             |"
echo "| 4. Logout                                |"
echo "--------------------------------------------"
echo -n "Enter your choice: "
read choice

case $choice in
    1) ./view_leave_applications.sh ;;
    2) ./approve_leave_application.sh ;;
    3) ./reject_leave_application.sh ;;
    4) ./main_dashboard.sh ;;
    *) echo "Invalid option. Please select again." ;;
esac
