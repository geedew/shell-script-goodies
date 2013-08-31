#!/bin/sh


# if mail is not your normal client (like Airmail), the calendar tends to open up mail all the time.
alias disableMail='sudo chmod 000 /Applications/Mail.app/Contents/MacOS/Mail';
alias enableMail='sudo chmod 755 /Applications/Mail.app/Contents/MacOS/Mail';