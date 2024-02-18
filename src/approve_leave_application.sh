#!/bin/bash
# Script Name: approve_leave_application.sh
# Description: This script enables supervisors to approve leave applications submitted by employees.

# Dummy leave applications data
leave_applications=("Alice - 5 days - Vacation" "Bob - 3 days - Sick leave")

clear
echo "--------------------------------------------"
echo "| APPROVE LEAVE APPLICATION                |"
echo "--------------------------------------------"

echo "Leave Applications:"
for leave in "${leave_applications[@]}"; do
    echo "- $leave"
done

echo -n "Enter the leave application to approve: "
read leave_to_approve

# Logic to mark the leave application as approved
echo "Leave application '$leave_to_approve' approved successfully."
