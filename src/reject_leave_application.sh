#!/bin/bash
# Script Name: reject_leave_application.sh
# Description: This script allows supervisors to reject leave applications submitted by employees.

# Dummy leave applications data
leave_applications=("Alice - 5 days - Vacation" "Bob - 3 days - Sick leave")

clear
echo "--------------------------------------------"
echo "| REJECT LEAVE APPLICATION                |"
echo "--------------------------------------------"

echo "Leave Applications:"
for leave in "${leave_applications[@]}"; do
    echo "- $leave"
done

echo -n "Enter the leave application to reject: "
read leave_to_reject

# Logic to mark the leave application as rejected
echo "Leave application '$leave_to_reject' rejected successfully."
