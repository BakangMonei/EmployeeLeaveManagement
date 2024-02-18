#!/bin/bash
# Script Name: main_dashboard.sh
# Description: This script serves as the main dashboard, providing options for employee and supervisor login.


# Main dashboard
clear
echo "--------------------------------------------"
echo "| EMPLOYEES LEAVE MANAGEMENT               |"
echo "| 1. Employees Login                       |"
echo "| 2. Supervisor Login                      |"
echo "| 3. Exit                                  |"
echo "--------------------------------------------"
echo -n "Enter your choice: "
read choice

case $choice in
    1) ./employee_login.sh ;;
    2) ./supervisor_login.sh ;;
    3) exit ;;
    *) echo "Invalid option. Please select again." ;;
esac
