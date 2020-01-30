this shortened URL https://tinyurl.com/s4tzkxb points to https://raw.githubusercontent.com/ottokop/dot/master/install.sh 
## Installation
Boot the VM on archlinux iso and then run the command

wget https://tinyurl.com/s4tzkxb -O install.sh
bash install.sh [user] [password] [fast]
All arguments are optional and will be prompted for if not passed on invocation:

[user] is your username
[password] is what you want the root and user password to be
[fast] is boolean 1 or 0 and controls using rankmirrors during set up which will be slow
The install.sh script will run and then reboot the computer once done.

You want to boot on disk this time and eject the cd from the VM.

Login as your user then run the command

bash post-install.sh
The script will ask for the root password a couple of times.

# Usage
Once the VM is booted, log in as your user and call startx to start Xorg.
