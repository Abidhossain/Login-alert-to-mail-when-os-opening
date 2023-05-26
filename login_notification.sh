#!/bin/bash
TO="your-gmail@example.com"
username=$(whoami)
SUBJECT="LOGIN ALERT"
BODY="The user $username has logged into the system at $(date)."
echo -e "Subject:$SUBJECT\n\n$BODY" | ssmtp $TO
