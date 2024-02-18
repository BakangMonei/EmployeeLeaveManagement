#!/bin/bash
# Script Name: apply_leave.sh
# Description: This script allows employees to apply for leave by entering the leave duration and reason.

clear
echo "--------------------------------------------"
echo "| APPLY FOR LEAVE                          |"
echo "--------------------------------------------"
echo -n "Enter leave duration (e.g., 5 days): "
read duration
echo -n "Enter reason for leave: "
read reason

# Save leave application to a file or database
echo "Leave applied for $duration days due to: $reason"
echo "Leave application submitted successfully."
