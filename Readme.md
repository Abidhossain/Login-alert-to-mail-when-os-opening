To create a script in Ubuntu that sends a notification email when a user logs in, you can use the following steps:

Install the required packages:

Open a terminal window.

Run the command: `sudo apt-get install ssmtp mailutils`

Configure the SMTP server:

Open the SSMTP configuration file by running the command:`sudo nano /etc/ssmtp/ssmtp.conf`

Update the file with the following lines:

makefile

Copy below code line by line


`mailhub=smtp.gmail.com:587`

`UseSTARTTLS=YES`

`FromLineOverride=YES`

`AuthUser=your-email@gmail.com`

`AuthPass=your-email-password`


Replace your-email@gmail.com with your Gmail email address and your-email-password with your Gmail password.

Save the changes by pressing `Ctrl+O` and then exit the editor by pressing `Ctrl+X`.

Create the script:

Open a text editor of your choice.

Paste the following script into the editor:

bash

Copy code

`#!/bin/bash`

`TO="your-notification-email@example.com"`

`SUBJECT="User Login Notification"`

`BODY="The user $USER has logged into the system at $(date)."`

`echo -e "Subject:$SUBJECT\n\n$BODY" | ssmtp $TO`


Replace your-notification-email@example.com with the email address where you want to receive the notification.

Save the file with a desired name, for example, login_notification.sh.

Make the script executable by running the command: `chmod +x login_notification.sh`

Set up the script to run on user login:

Open the Startup Applications preferences. 
You can search for "Startup Applications" in the Ubuntu Dash or launch it from the system settings.

Click on the "Add" button or similar.

Provide a name for the script, e.g., "Login Notification Script".

In the "Command" field, enter the path to the script you created in step 3, e.g.,
`/path/to/login_notification.sh`.

Save the changes.

Now, whenever a user logs into the system, the script will run and send a notification email to the specified email address.
