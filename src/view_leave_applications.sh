#!/bin/bash
# Script Name: view_leave_applications.sh
# Description: This script allows supervisors to view the list of leave applications submitted by employees.

# Dummy leave applications data
leave_applications=("Alice - 5 days - Vacation" "Bob - 3 days - Sick leave")

clear
echo "--------------------------------------------"
echo "| VIEW LEAVE APPLICATIONS                  |"
echo "--------------------------------------------"

echo "Leave Applications:"
for leave in "${leave_applications[@]}"; do
    echo "- $leave"
done
