---
title: Important Linux Commands
categories: ['Linux']
image: '../blog-1/e4d5ed47ee58aa859995cae2a4e83221.webp'
imageCredit: https://dribbble.com/shots/13972666-faces
date: "2020-10-05T19:00:00"
time: 3
description: "somth"
---

# Important Linux Commands: Linux Commands You Must Know

In 1991 when Linus Torvalds for the first time publicly shared his newly made kernel completely free from minix code, then even he was not aware of its capabilities in bringing the revolution in the software industry at that time. The open source we hear today was not much popular back then, not until linux was founded. You see, Git a very popular VCS(Version Control System) was founded by the same guy to maintain the linux kernel. People loved this operating system not just because it was free but because it brought freedom to the computer and software industry. Linux can be customized for specific users and for specific hardware requirements.  
According to a survey by [w3techs.com][1] in 2020, Almost 29.7% of the websites uses linux operating system. Around 49% of all the developers uses linux as their daily drive for development purpose according to survey from 2018-20 by [statista.com][2]. Linux is a popular choice among developers and tech enthusiasts. So today i bring to you these essential linux commands that you should know no matter you are an experienced developer or a newbie. Lets have a look -

###  [ ][3] 1) ls [OPTION]... [FILE]... 

ls stands for list. ls command is used to list the contents of a directory or information about a file. By default ls(without any options) lists the contents of the directory you are currently in.  
**usage:**`ls` to list contents of the current directory

**usage:**`ls -a` to list all the contents of the directory including hidden ones

**usage:**`ls -A` to list almost all the files (ignoring `.` and `..` implied files)

**usage:**`ls -Al` to list almost all the files (ignoring `.` and `..` implied files) together with their author name 

**usage:**`ls -bl` to list files according to the size together with their author name

###  [ ][4] 2) pwd [LP] 

pwd stands for present working directory. This command is used to print the path of the current working directory. This command has only two options `-L` and `-P`  
**usage:**`pwd` to print the path of the current working directory

###  [ ][5] 3) mkdir [OPTION]... DIRECTORY... 

mkdir stands for make directory. This command is used to create one or more than one directories if they do not already exists.  
**usage:**`mkdir john` to create a directory named john

**usage:**`mkdir john doe` to create two directories named john and doe

**usage:**`mkdir -m [FILE MODE] john` to create a directory named john with a specified file mode

**usage:**`mkdir -v [DIRECTORY NAME]` to create a directory and print a message.

###  [ ][6] 4) echo [SHORT-OPTION]... [STRING]... 

This command is used to print a piece of text on the screen.  
**usage:**`echo [MESSAGE]` to print the message on a new line

**usage:**`echo -n [MESSAGE]` to print the message on the same line as the pointer

###  [ ][7] 5) whoami [OPTION]... 

This command is used to print the name of the user associated with the current user ID. This command take only two arguments - `\--help` and `\--version`.  
**usage:**`whoami` to print the username of the current user

###  [ ][8] 6) cd [-L|[-P [-e]] [-@]] [dir] 

cd stands for change directory. This command is used to change the working directory. By default this command changes from current directory to home directory.  
**usage:**`cd Downloads` to move from current directory to Download directory

**usage:**`cd` to move from current directory to home directory

###  [ ][9] 7) cat [OPTION]... [FILE]... 

cat stands for concatenate. This command is used to print the contents of a file to the screen. Without any option cat is used to print output from the standard input.  
**usage:**`cat john.txt` to print the content of file john.txt to the screen

**usage:**`cat -s john.txt` to print the content of john.txt by suppressing repeated empty output lines

###  [ ][10] 8) top -hv|-bcEHiOSs1 -d secs -n max -u|U user -p pid -o fld -w [cols] 

This command is used to display processes of a linux system. This command takes several options. Refer man page for a full description.  
**usage:**`top` to display linux processes to the screen

###  [ ][11] 9) man [man options] [[section] page ...] ... 

man stands for manual. This command is probably the most useful but unfortunately a bit neglected command. A beginner should always first refer to the man pages for a total description,options and usage of a specific command.  
**usage:**`man ls` to the open manual page of ls command

###  [ ][12] 10) kill [-s sigspec | -n signum | -sigspec] pid | jobspec ... or kill -l [sigspec] 

This command as it sounds is used to kill a specific process by its PID, signal name or signal number.  
**usage:**`kill -15 [PID]` to soft kill the process of the following PID

**usage:**`kill -9 [PID]` to immediately kill the process of the following PID

**usage:**`killall [PROCESS NAME]` to kill all the instances of the following process owned by the current user

###  [ ][13] 11) more [options] ... 

This command is used to limit the contents of a file printed to the screen.  
**usage:**`more /etc/passwd` to print the contents of passwd file to the screen. Press ENTER to advance one line, SPACE to advance a full page and q to quit

###  [ ][14] 12) less [options] ... 

This command is used to limit the contents of a file printed to the screen. It has more options than `more` command.   
**usage:**`less /etc/passwd` to print the contents of passwd file to the screen. Press ENTER to advance one line, SPACE to advance a full page but does not quits when reaches the end.

###  [ ][15] 13) ifconfig [-a] [-v] [-s] <=interface=> [[<=AF=>] ] 

This command is used to list all the network interfaces of the linux machine. This command can also be used to change an interface's IP address, assign IP address to a specific interface, take an interface offline,online and more.  
**usage:**`ifconfig` to list all the network interfaces together with information like IP address, MAC address, etc.  
_Note:_`ifconfig` can be installed by `sudo apt-get install net-tools` in case of debian based distros. 

###  [ ][16] 14) grep [OPTION]... PATTERNS [FILE]... 

This command is used to search for patterns in a specific file.  
**usage:**`grep -i 'john doe' menu.h main.c` to search for john doe in the following files 

###  [ ][17] 15) who [OPTION]... [ FILE | ARG1 ARG2 ] 

This command is used to print the information of the users who are currently logged in.  
**usage:**`who` to the know the information about the users currently logged in

**usage:**`who -b` to print the time of the last system boot

###  [ ][18] 16) alias [-p] [name[=value] ... ] 

This command is used to give name to a command or sequence of commands. By default Without arguments, `alias' prints the list of aliases in the reusable form`alias NAME=VALUE' on standard output.

**usage:**`alias cls=clear` to execute clear command by typing cls.

###  [ ][19] 17) chmod [OPTION]... MODE[,MODE]... FILE... 

This command is used to set permissions for a file or to change the file mode.  
**usage:**`chmod 765 john.txt` to set the permission of john.txt as read, write and execute(7) for the owner, read and write(6) for the group and read and execute(5) for others

###  [ ][20] 18) curl [options...] 

This command is used to retrieve information and files from or to a server using one of the supported protocols.  
**usage:**`curl [URL]` to retrieve information from the following url  
*Note:*The curl tool can be installed with `sudo apt-get install curl` in case of debian based distros.

This was just some of the important linux commands. For a full list of linux commands or linux cheat sheet please visit this link:[Linux-Cheat-Sheet][21]  
**Note:**If you know some commands then please take a minute and contribute to the link above.

Thanks for Reading :) 

[1]: https://w3techs.com/technologies/details/os-linux
[2]: https://www.statista.com/statistics/869211/worldwide-software-development-operating-system/
[3]: https://dev.to#1-ls-option-file
[4]: https://dev.to#2-pwd-lp
[5]: https://dev.to#3-mkdir-option-directory
[6]: https://dev.to#4-echo-shortoption-string
[7]: https://dev.to#5-whoami-option
[8]: https://dev.to#6-cd-lp-e-dir
[9]: https://dev.to#7-cat-option-file
[10]: https://dev.to#8-top-hvbcehioss1-d-secs-n-max-uu-user-p-pid-o-fld-w-cols
[11]: https://dev.to#9-man-man-options-section-page-
[12]: https://dev.to#10-kill-s-sigspec-n-signum-sigspec-pid-jobspec-or-kill-l-sigspec
[13]: https://dev.to#11-more-options-
[14]: https://dev.to#12-less-options-
[15]: https://dev.to#13-ifconfig-a-v-s-ltinterfacegt-ltafgt-
[16]: https://dev.to#14-grep-option-patterns-file
[17]: https://dev.to#15-who-option-file-arg1-arg2-
[18]: https://dev.to#16-alias-p-namevalue-
[19]: https://dev.to#17-chmod-option-modemode-file
[20]: https://dev.to#18-curl-options
[21]: https://github.com/chaitanya4vedi/Linux-Cheat-Sheet/blob/master/README.md

  
