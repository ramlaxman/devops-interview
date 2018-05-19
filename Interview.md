### General Questions:
#### What function does DNS play on a network?
A: DNS, or Domain Name System, associates domain names to entities in the system. The widest used example is translating domain names to IP addresses, in order to locate devices. For example, when asked what www.exmaple.org is, DNS will respond with 93.184.216.119, the IP of that domain.[DNS](https://en.wikipedia.org/wiki/Dns)

How does DNS work?

When you visit a domain such as dyn.com, your computer follows a series of steps to turn the human-readable web address into a machine-readable IP address. This happens every time you use a domain name, whether you are viewing websites, sending email or listening to Internet radio stations like Pandora.

#### `Step 1: Request information`

The process begins when you ask your computer to resolve a hostname, such as visiting http://dyn.com. The first place your computer looks is its local DNS cache, which stores information that your computer has recently retrieved. If your computer doesn’t already know the answer, it needs to perform a DNS query to find out.

#### `Step 2: Ask the recursive DNS servers`

If the information is not stored locally, your computer queries (contacts) your ISP’s recursive DNS servers. These specialized computers perform the legwork of a DNS query on your behalf. Recursive servers have their own caches, so the process usually ends here and the information is returned to the user.

#### `Step 3: Ask the root nameservers`

If the recursive servers don’t have the answer, they query the root nameservers. A nameserver is a computer that answers questions about domain names, such as IP addresses. The thirteen root nameservers act as a kind of telephone switchboard for DNS. They don’t know the answer, but 
###### they can direct our query to someone that knows where to find it.

#### `Step 4: Ask the TLD nameservers`

The root nameservers will look at the first part of our request, reading from right to left — www.dyn.com — and direct our query to the Top-Level Domain (TLD) nameservers for .com. Each TLD, such as .com, .org, and .us, have their own set of nameservers, which act like a receptionist for each TLD. These servers don’t have the information we need, but they can refer us directly to the servers that do have the information.

#### `Step 5: Ask the authoritative DNS servers`

The TLD nameservers review the next part of our request — www.dyn.com — and direct our query to the nameservers responsible for this specific domain. These authoritative nameservers are responsible for knowing all the information about a specific domain, which are stored in DNS records. There are many types of records, each of which contains a different kind of information. In this example, we want to know the IP address for www.dyndns.com, so we ask the authoritative nameserver for the Address Record (A).

#### `Step 6: Retrieve the record`
The recursive server retrieves the A record for dyn.com from the authoritative nameservers and stores the record in its local cache. If anyone else requests the host record for dyn.com, the recursive servers will already have the answer and will not need to go through the lookup process again. All records have a time-to-live value, which is like an expiration date. After a while, the recursive server will need to ask for a new copy of the record to make sure the information doesn’t become out-of-date.

#### `Step 7: Receive the answer`
Armed with the answer, recursive server returns the A record back to your computer. Your computer stores the record in its cache, reads the IP address from the record, then passes this information to your browser. The browser then opens a connection to the webserver and receives the website.

This entire process, from start to finish, takes only milliseconds to complete.

#### What is HTTP?

HTTP, or Hypertext Transfer Protocol, is "an application protocol for distributed, collaborative, hypermedia information systems (Wikipedia)", and is the foundation of the World Wide Web (distinct from the Internet as a whole). In the context of System Administration, HTTP is related to the applications or services that handle that protocol, most notably web servers like Apache or Nginx (among others).

Further Reading: [HTTP](https://en.wikipedia.org/wiki/Http)
####  What is an HTTP proxy and how does it work?

There are two types of proxies that are likely to be considered an HTTP Proxy - forward proxy and reverse proxy.

A forward proxy takes HTTP requests (web traffic) from a host on an internal network, and forwards them out to the internet. This can be done for various reasons, such as providing web access to hosts that don't have a direct route out, or for monitoring the traffic of the users on the network, or more.

A reverse proxy takes HTTP requests coming in from the internet and delivers them to a web server inside the network. Some reasons for using a reverse proxy are to protect the webserver from the internet in general, to allow multiple webservers to serve content for one domain, to cache static content or compress the content being served by the webserver, etc.
Further Reading: https://en.wikipedia.org/wiki/Proxy_server

#### What is SMTP? Give the basic scenario of how a mail message is delivered via SMTP!
The protocols are vital to your networking activity and, fortunately for you, you don't need to manage, install or even think about them. They're built in to the networking software on your computers. Thank goodness for advanced technology and IT geniuses!

What is SMTP?
SMTP is part of the application layer of the TCP/IP protocol. Using a process called "store and forward," SMTP moves your email on and across networks. It works closely with something called the Mail Transfer Agent (MTA) to send your communication to the right computer and email inbox. SMTP spells out and directs how your email moves from your computer's MTA to an MTA on another computer, and even several computers. Using that "store and forward" feature mentioned before, the message can move in steps from your computer to its destination. At each step, Simple Mail Transfer Protocol is doing its job. Lucky for us, this all takes place behind the scenes, and we don't need to understand or operate SMTP.

SMTP at work: SMTP provides a set of codes that simplify the communication of email messages between email servers (the network computer that handles email coming to you and going out). It's a kind of shorthand that allows a server to break up different parts of a message into categories the other server can understand. When you send a message out, it's turned into strings of text that are separated by the code words (or numbers) that identify the purpose of each section.

SMTP provides those codes, and email server software is designed to understand what they mean. As each message travels towards its destination, it sometimes passes through a number of computers as well as their individual MTAs. As it does, it's briefly stored before it moves on to the next computer in the path. Think of it as a letter going through different hands as it winds its way to the right mailbox.
#### What is RAID? What is RAID0, RAID1, RAID5, RAID10?
RAID stands for redundant array of independent disks. The name indicates that the disk drives are independent, and are multiple in number. How the data is distributed between these drives depends on the RAID level used. The main advantage of RAID, is the fact that, to the operating system the array of disks can be presented as a single disk.

`RAID 0 or No RAID`

If your main priority is performance, then raid 0 fits right.
An important fact that should be kept in mind is that, RAID 0 does not provide any kind of redundancy. Which means even if one drive fails, your data is at risk. It is simply striping done on your disk array. Data is broken into smaller chunks and are spread across the number of disks you have. It has no mirroring, no parity(which means no redundancy !) In fact raid level 0 is not RAID, because raid was primarily build for redundancy, and raid 0 does not provide any kind of redundancy, although it provides high performance.

`Raid level 1(RAID 1)`

RAID 1 implements heavy use of mirroring. All data in the drive is duplicated to another drive. It can be used in a situation where fault tolerance is of primary importance. Maximum number of drives in RAID 1 can be 32, from a starting number of 2(even number of disks are required.) Striping and parity are not used in RAID 1  You can refer the diagram shown in mirroring of raid section in this article, for RAID 1.

`Raid Level 5 (RAID 5)`

RAID level 5 uses striping, so data is spread across number of disks used in the array, and also provides redundancy with the help of parity. RAID 5 is a best cost effective solution for both performance and redundancy. Striped method of storing data always improves performance, and parity used in this level of raid is distributed parity. Minimum number of disks required for raid 5 is 3, and maximum can go upto 32(depending on the RAID controller used.) One important fact to note is that, reading rate in raid 5 is much better than writing. This is because reading can be done, by a combined rate of all disks used. As a reference you can have a look at the distributed parity diagram shown in the Parity in Raid section of this article.

`Raid level 6 (RAID 6)`

Raid level 6 is very much similar to raid level 5, but it has got one more added advantage. The added advantage is that it can sustain 2 drive failures instead of 1. This is achieved again with the help of parity. In raid level 6, double distributed parity is used to achieve this level of redundancy. You can cleary see in the above diagram, each and every stripe set contains two parity on multiple disks. So even even if two disks gets failed at one time, data can still be recreated. Performance of raid 6 is very much similar to performance of raid 5, its much well suited for reads that writes. 

`Raid 10 (Combination of Raid 0 and Raid 1)`

Raid 10 is a good solution that will give you both the performance advantage of raid 0 and also the redundancy of raid 1 mirroring. Raid 10 was made by a combination of raid 0 and raid 1. And hence you get qualities of both the raid levels. Lets understand how data is stored in raid 10 array. If you see the above diagram data is redundant with a duplicate set in raid 1, and also is stripped across multiple raid 1 groups to achieve performance. This is best suitable for heavy IO usage & also provides 100 percent redundancy. Minimum number of drives required is 4. It is quite expensive, as you can clearly see that you are dedicating one disk per raid 1 array for redundancy. But is an excellent choice for both performance and redundancy.

RAID 0 uses striping for high performance. Raid 0 cannot be considered as RAID as it does not provide fault tolerance.
RAID 1 uses mirroring for redundancy.
RAID 5 uses striping as well as parity for redundancy. It is well suited for heavy read and low write operations.
RAID 6 uses striping and double parity for redundancy.
RAID 10 is a combination of raid 1 and raid 0. It also provides heavy redundancy because of mirroring, and also provides performance as the data is striped across multiple raid 1 groups. `

#### What is a level 0 backup? What is an incremental backup?
#### Describe the general file system hierarchy of a Linux system.
Ans: [Linux](https://www.geeksforgeeks.org/linux-file-hierarchy-structure/)

#### [⬆] Simple Linux Questions:
https://jivoi.github.io/2016/01/22/linux-sysadm-devops-interview-questions/

#### What is the name and the UID of the administrator user?

The administrator on Linux systems is called "root". Root's UID is 0.

#### How to list all files, including hidden one, in a directory?

The ls command lists files. To list all files, including hidden one ("dotfiles" - or those that start with a "."), you use the -a flag:
`ls -a <directory>`

#### What is the Unix/Linux command to remove a directory and its contents?

The rmdir command removes EMPTY directories:
`rmdir <directory>`

The rm command can be used with the -r flag to remove a directory AND it's contents:
`rm -r <directory>`

#### Which command will show you free/used memory? Does free memory exist on Linux?

The free command will show you the free/used memory on a system, with output like:

             total       used       free     shared    buffers     cached

Mem:       8128884    7171252     957632      14096        108    4010944

-/+ buffers/cache:    3160200    4968684

Swap:      3906556      51644    3854912

The second line (Mem:) lists the memory usage. "total" refers to the whole amount of RAM installed in the system. "free" is the amount of RAM not being used for anything.

Linux can borrow a large amount of free memory to use for buffering and disk caching. This is done to speed up the system in general, but does NOT mean the system is low on free memory. If more memory is needed for the processes on the system, they just use the memory allocated to disk cache.
Further Reading: http://www.linuxatemyram.com/

How to search for the string "my konfi is the best" in files of a directory recursively?

How to connect to a remote server or what is SSH?

How to get all environment variables and how can you use them?

I get "command not found" for ifconfig -a. What can be wrong?

What happens if I type TAB-TAB?

What command will show the available disk space on the Unix/Linux system?

What command is used to lookup DNS records?
What Unix/Linux commands will alter a files ownership, files permissions?
What does chmod +x FILENAMEdo?
What does the permission 0750 on a file mean?
What does the permission 0750 on a directory mean?
How to add a new system user without login permissions?
How to add/remove a group from a user?
What is a bash alias?
How do you set the mail address of the root/a user?
What does CTRL-c do?
What is in /etc/services?
How to redirect STDOUT and STDERR in bash? (> /dev/null 2>&1)
What is the difference between UNIX and Linux
What is the difference between Telnet and SSH?

####[⬆] Medium Linux Questions:
What do the following commands do?

    tee
    awk
    tr
    cut
    tac
    curl
    wget
    watch
    tail

What does a & after a command do?
What does & disown after a command do?
What is a packet filter and how does it work?
What is swap and what is it used for?
What is an A record, an NS record, a PTR record, a CNAME record, an MX record?

    Are there any other RRs and what are they used for?

What is the sticky bit?
What is the difference between hardlinks and symlinks? What happens when you remove the source to a symlink/hardlink?
What is an inode and what fields are stored in an inode?
Howto force/trigger a file system check on next reboot?
What is SNMP and what is it used for?
What is a runlevel and how to get the current runlevel?
What is SSH port forwarding?
What is the difference between local and remote port forwarding?
What steps to add a user to a system without using useradd/adduser?
What is MAJOR and MINOR numbers of special files?
Describe a scenario when you get a "filesystem is full" error, but 'df' shows there is free space.
Describe a scenario when deleting a file, but 'df' not showing the space being freed.
Describe how 'ps' works.
What happens to a child process that dies and has no parent process to wait for it and what’s bad about this?
How to know which process listens on a specific port?

####[⬆] Hard Linux Questions:
What is the difference between processes and threads?
What is a tunnel and how you can bypass a http proxy?
What is the difference between IDS and IPS?
What shortcuts do you use on a regular basis?
What is the Linux Standard Base?
What is an atomic operation?
Your freshly configured http server is not running after a restart, what can you do?
What kind of keys are in ~/.ssh/authorized_keys and what it is this file used for?
I've added my public ssh key into authorized_keys but I'm still getting a password prompt, what can be wrong?
Did you ever create RPM's, DEB's or solaris pkg's?
What does :(){ :|:& };: do on your system and why you would care about that?
How trace system call and signal?
What's happening when the Linux kernel is starting the OOM killer, how does it choose which process to kill first.
Describe the linux boot process with as much detail as possible, starting from when the system is powered on and ending when you get a prompt.
What's a chroot jail?
When trying to umount a directory it says it's busy, how to find out which PID holds the directory?

####[⬆] Expert Linux Questions:
A running process gets EAGAIN: Resource temporarily unavailable on reading a socket. How you can close this bad socket/file descriptor without killing the process?

####[⬆] Networking Questions:
What is localhost and why would ping localhost fail?
What command is used to show all open ports and/or socket connections on a machine?
Is 300.168.0.123 a valid IPv4 address?
Which IP ranges/subnets are "private" or "non-routable" (RFC 1918)?
What is a VLAN?
What is ARP and what is it used for?
What is the difference between TCP and UDP?
What is the purpose of a default gateway?
What command is used to show the route table for a machine?
A TCP connection on a network can be uniquely defined by 4 things. What are those things?
When a client running a web browser connects to a web server, what is the source port and what is the destination port of the connection?
How do you add an IPv6 address to a specific interface?
You have added an IPv4 and IPv6 address to interface eth0. A ping to the v4 address is working but a ping to the v6 address gives yout the response sendmsg: operation not permitted. What could be wrong?

####[⬆] DevOp Questions:
Can you describe your workflow when you create a script?
What is GIT?
What is a dynamically/statically linked file?
What does "configure && make && make install"?
What is puppet/chef/ansible used for?
How do you create a new mysql user?
How do you create a new postgres user?
What is a virtual IP address? What is a cluster?
How print the strings of printable characters in files?
How look shared library dependencies?
What is Automake and Autoconf?
./configure shows an error that libfoobar is missing on your system, how could you fix this, what could be wrong?
Advantages/disadvantages of script vs compiled program.
What is the difference between fork and thread? And parent and child process in fork system call?

####[⬆] Fun Questions:
A careless sysadmin executes the following command: chmod 444 /bin/chmod - what do you do to fix this?
I've lost my root password, what can I do?
I've rebooted a remote server but after 10 minutes I'm still not able to ssh into it, what can be wrong?
If you were stuck on a desert island with only 5 command-line utilities, which would you choose?

####[⬆] Demo Time:
Unpack test.tar.gz without man pages or google.
Remove all "*.pyc" files from testdir recursively?
Search for "my konfu is the best" in all *.py files.
Replace the occurrence of "my konfu is the best" with "I'm a linux jedi master" in all *.txt files.
interrobang more on files ... cut, tr, awk ...
Test if port 443 on a machine with IP address X.X.X.X is reachable.
Get http://myinternal.webserver.local/test.html via telnet.
How to send an email without a mail client, just on the command line?
Write a get_prim method in python/perl/bash/pseudo.
Find all files which have been accessed within the last 30 days.
Explain the following command (date ; ps -ef | awk ‘{print $1}’ | sort | uniq | wc -l ) >> Activity.log
Write a script to list all the differences between two directories.
Write a program in any language you choose, to reverse a file.


General Questions:
•	What did you learn yesterday/this week?
•	Talk about your preferred development/administration environment. (OS, Editor, Browsers, Tools etc.)
•	Tell me about the last major Linux project you finished.
•	Tell me about the biggest mistake you've made in [some recent time period] and how you would do it differently today. What did you learn from this experience?
•	Why we must choose you?
•	What function does DNS play on a network?
•	What is HTTP?
•	What is an HTTP proxy and how does it work?
•	Describe briefly how HTTPS works.
•	What is SMTP? Give the basic scenario of how a mail message is delivered via SMTP.
•	What is RAID? What is RAID0, RAID1, RAID5, RAID10?
•	What is a level 0 backup? What is an incremental backup?
•	Describe the general file system hierarchy of a Linux system.

[⬆] Simple Linux Questions:
•	What is the name and the UID of the administrator user?
•	How to list all files, including hidden ones, in a directory?
•	What is the Unix/Linux command to remove a directory and its contents?
•	Which command will show you free/used memory? Does free memory exist on Linux?
•	How to search for the string "my konfi is the best" in files of a directory recursively?
•	How to connect to a remote server or what is SSH?
•	How to get all environment variables and how can you use them?
•	I get "command not found" when I run ifconfig -a. What can be wrong?
•	What happens if I type TAB-TAB?
•	What command will show the available disk space on the Unix/Linux system?
•	What commands do you know that can be used to check DNS records?
•	What Unix/Linux commands will alter a files ownership, files permissions?
•	What does chmod +x FILENAME do?
•	What does the permission 0750 on a file mean?
•	What does the permission 0750 on a directory mean?
•	How to add a new system user without login permissions?
•	How to add/remove a group from a user?
•	What is a bash alias?
•	How do you set the mail address of the root/a user?
•	What does CTRL-c do?
•	What is in /etc/services?
•	How to redirect STDOUT and STDERR in bash? (> /dev/null 2>&1)
•	What is the difference between UNIX and Linux.
•	What is the difference between Telnet and SSH?
•	Explain the three load averages and what do they indicate. What command can be used to view the load averages?
•	Can you name a lower-case letter that is not a valid option for GNU ls?
•	What is a Linux kernel module?
•	Walk me through the steps in booting into single user mode to troubleshoot a problem.
•	Walk me through the steps you'd take to troubleshoot a 404 error on a web application you administer.

[⬆] Medium Linux Questions:
•	What do the following commands do and how would you use them?
•	tee
•	awk
•	tr
•	cut
•	tac
•	curl
•	wget
•	watch
•	head
•	tail
•	What does an & after a command do?
•	What does & disown after a command do?
•	What is a packet filter and how does it work?
•	What is Virtual Memory?
•	What is swap and what is it used for?
•	What is an A record, an NS record, a PTR record, a CNAME record, an MX record?
•	Are there any other RRs and what are they used for?
•	What is a Split-Horizon DNS?
•	What is the sticky bit?
•	What does the immutable bit do to a file?
•	What is the difference between hardlinks and symlinks? What happens when you remove the source to a symlink/hardlink?
•	What is an inode and what fields are stored in an inode?
•	How to force/trigger a file system check on next reboot?
•	What is SNMP and what is it used for?
•	What is a runlevel and how to get the current runlevel?
•	What is SSH port forwarding?
•	What is the difference between local and remote port forwarding?
•	What are the steps to add a user to a system without using useradd/adduser?
•	What is MAJOR and MINOR numbers of special files?
•	Describe the mknod command and when you'd use it.
•	Describe a scenario when you get a "filesystem is full" error, but 'df' shows there is free space.
•	Describe a scenario when deleting a file, but 'df' not showing the space being freed.
•	Describe how 'ps' works.
•	What happens to a child process that dies and has no parent process to wait for it and what’s bad about this?
•	Explain briefly each one of the process states.
•	How to know which process listens on a specific port?
•	What is a zombie process and what could be the cause of it?
•	You run a bash script and you want to see its output on your terminal and save it to a file at the same time. How could you do it?
•	Explain what echo "1" > /proc/sys/net/ipv4/ip_forward does.
•	Describe briefly the steps you need to take in order to create and install a valid certificate for the site https://foo.example.com.
•	Can you have several HTTPS virtual hosts sharing the same IP?
•	What is a wildcard certificate?
•	Which Linux file types do you know?
•	What is the difference between a process and a thread? And parent and child processes after a fork system call?
•	What is the difference between exec and fork?
•	What is "nohup" used for?
•	What is the difference between these two commands?
•	myvar=hello
•	export myvar=hello
•	How many NTP servers would you configure in your local ntp.conf?
•	What does the column 'reach' mean in ntpq -p output?
•	You need to upgrade kernel at 100-1000 servers, how you would do this?
•	How can you get Host, Channel, ID, LUN of SCSI disk?
•	How can you limit process memory usage?
•	What is bash quick substitution/caret replace(^x^y)?
•	Do you know of any alternative shells? If so, have you used any?
•	What is a tarpipe (or, how would you go about copying everything, including hardlinks and special files, from one server to another)?
•	How can you tell if the httpd package was already installed?
•	How can you list the contents of a package?
•	How can you determine which package is better: openssh-server-5.3p1-118.1.el6_8.x86_64 or openssh-server-6.6p1-1.el6.x86_64 ?
•	Can you explain to me the difference between block based, and object based storage?

[⬆] Hard Linux Questions:
•	What is a tunnel and how you can bypass a http proxy?
•	What is the difference between IDS and IPS?
•	What shortcuts do you use on a regular basis?
•	What is the Linux Standard Base?
•	What is an atomic operation?
•	Your freshly configured http server is not running after a restart, what can you do?
•	What kind of keys are in ~/.ssh/authorized_keys and what it is this file used for?
•	I've added my public ssh key into authorized_keys but I'm still getting a password prompt, what can be wrong?
•	Did you ever create RPM's, DEB's or solaris pkg's?
•	What does :(){ :|:& };: do on your system?
•	How do you catch a Linux signal on a script?
•	Can you catch a SIGKILL?
•	What's happening when the Linux kernel is starting the OOM killer and how does it choose which process to kill first?
•	Describe the linux boot process with as much detail as possible, starting from when the system is powered on and ending when you get a prompt.
•	What's a chroot jail?
•	When trying to umount a directory it says it's busy, how to find out which PID holds the directory?
•	What's LD_PRELOAD and when it's used?
•	You ran a binary and nothing happened. How would you debug this?
•	What are cgroups? Can you specify a scenario where you could use them?
•	How can you remove/delete a file with file-name consisting of only non-printable/non-type-able characters?
•	How can you increase or decrease the priority of a process in Linux?
•	What are run-levels in Linux?

[⬆] Expert Linux Questions:
•	A running process gets EAGAIN: Resource temporarily unavailable on reading a socket. How can you close this bad socket/file descriptor without killing the process?

[⬆] Networking Questions:

   Using the OSI model, which layer has the responsibility of making sure that the packet gets where it is supposed to go?
   What is the subnet mask, network address and broadcast address for the following address: 123.65.47.62/22?

   What command is used to show all open ports and/or socket connections on a machine?

   What is NAT? What is it used for?

   Which IP ranges/subnets are "private" or "non-routable" (RFC 1918)?

   What is a packet filter and how does it work?

   What is a proxy and how does it work?

   What is ARP and what is it used for?

   What is the difference between TCP and UDP?

   What command is used to show the route table for a machine?

   Explain asynchronous routing?

   What is the purpose of a default gateway?

   A TCP connection on a network can be uniquely defined by 4 things. What are those things?

   When a client running a web browser connects to a web server, what is the source port of the connection?

   What is the destination port of the connection?

   What is SMTP?

   What is an SMTP relay?

   Give the basic scenario of how a mail message is delivered via SMTP

   What function does DNS play on a network?

   What is an A record?

   What is an NS record?

   What is an MX record?

   What is a PTR record?

   What is a DNS forwarder?

   What command is used to lookup DNS records?

   What is meant by "Reverse Lookup"?

   What is LDAP and what is it used for?

   What is a DN in LDAP?

   What is SSH?

   What is SSL?

   What is IDS?

   What is IPS?

   What is the difference between IDS and IPS?

   What is meant by the term "DOS Attack"?

   What is RAID?

   What is swap and what is it used for?

   What command will show the available disk space on the Unix/Linux system?

   How do you determine the public and prive IP addresses, if applicable, of a Unix/Linux system from the command line?

   What Unix/Linux command will alter a file's ownership?

   What Unix/Linux command will alter a file's permissions?

   What Unix/Linux command will show all processes running on a system?

   What Unix/Linux command will show the details of a file(permissions, size, timestamp)?

   What Unix/Linux command would you use to list all currently loaded kernel modules?

   What command would you use to telnet to port 7777 on a machine with IP address 10.10.10.128?

   What Unix/Linux command(s) will show a system's current resource allocations?

   What is the Unix/Linux command to remove a directory and its contents?

   What is the name and location of the system log on a Unix or Linux system?

   What would you do to recover a lost the root password to a Unix/Linux system?

   What is the difference between hardlink and symlink?

   What happens when you remove the source to a symlink?

   What are some of the security risks of symlinks?

   Explain a hardlink

   Where is a filename stored?

   What happens when a hardlink is removed

   how do you know when a file is removed

   Write a locking function in bash

   What is a pre-emptive kernel, what does that mean to you?

   What is an atomic operation?

   How does a switch get a mac address?

   What type of packet to discover a router?

   How does traceroute work?

   A careless sysadmin executes the following command: chmod 444 chmod - what do you do to fix this?

•	What is localhost and why would ping localhost fail?
•	What is the similarity between "ping" & "traceroute" ? How is traceroute able to find the hops.
•	What is the command used to show all open ports and/or socket connections on a machine?
•	Is 300.168.0.123 a valid IPv4 address?
•	Which IP ranges/subnets are "private" or "non-routable" (RFC 1918)?
•	What is a VLAN?
•	What is ARP and what is it used for?
•	What is the difference between TCP and UDP?
•	What is the purpose of a default gateway?
•	What is command used to show the routing table on a Linux box?
•	A TCP connection on a network can be uniquely defined by 4 things. What are those things?
•	When a client running a web browser connects to a web server, what is the source port and what is the destination port of the connection?
•	How do you add an IPv6 address to a specific interface?
•	You have added an IPv4 and IPv6 address to interface eth0. A ping to the v4 address is working but a ping to the v6 address gives you the response sendmsg: operation not permitted. What could be wrong?
•	What is SNAT and when should it be used?
•	Explain how could you ssh login into a Linux system that DROPs all new incoming packets using a SSH tunnel.
•	How do you stop a DDoS attack?
•	How can you see content of an ip packet?

•	What is IPoAC (RFC 1149)?
[⬆] MySQL questions:
•	How do you create a user?
•	How do you provide privileges to a user?
•	What is the difference between a "left" and a "right" join?
•	Explain briefly the differences between InnoDB and MyISAM.
•	Describe briefly the steps you need to follow in order to create a simple master/slave cluster.
•	Why should you run "mysql_secure_installation" after installing MySQL?
•	How do you check which jobs are running?
•	How would you take a backup of a MySQL database?

[⬆] DevOps Questions:
•	Can you describe your workflow when you create a script?
•	What is GIT?
•	What is a dynamically/statically linked file?
•	What does "./configure && make && make install" do?
•	What is puppet/chef/ansible used for?
•	What is Nagios/Zenoss/NewRelic used for?
•	What is Jenkins/TeamCity/GoCI used for?
•	What is the difference between Containers and VMs?
•	How do you create a new postgres user?
•	What is a virtual IP address? What is a cluster?
•	How do you print all strings of printable characters present in a file?
•	How do you find shared library dependencies?
•	What is Automake and Autoconf?
•	./configure shows an error that libfoobar is missing on your system, how could you fix this, what could be wrong?
•	What are the advantages/disadvantages of script vs compiled program?
•	What's the relationship between continuous delivery and DevOps?
•	What are the important aspects of a system of continuous integration and deployment?
•	How would you enable network file sharing within AWS that would allow EC2 instances in multiple availability zones to share data?
[⬆] Fun Questions:
•	A careless sysadmin executes the following command: chmod 444 /bin/chmod - what do you do to fix this?
•	I've lost my root password, what can I do?
•	I've rebooted a remote server but after 10 minutes I'm still not able to ssh into it, what can be wrong?
•	If you were stuck on a desert island with only 5 command-line utilities, which would you choose?
•	You come across a random computer and it appears to be a command console for the universe. What is the first thing you type?
•	Tell me about a creative way that you've used SSH?
•	You have deleted by error a running script, what could you do to restore it?
•	What will happen on 19 January 2038?
•	How to reboot server when reboot command is not responding?

Demo Time:
•	Unpack test.tar.gz without man pages or google.
•	Remove all "*.pyc" files from testdir recursively?
•	Search for "my konfu is the best" in all *.py files.
•	Replace the occurrence of "my konfu is the best" with "I'm a linux jedi master" in all *.txt files.
•	Test if port 443 on a machine with IP address X.X.X.X is reachable.
•	Get http://myinternal.webserver.local/test.html via telnet.
•	How to send an email without a mail client, just on the command line?
•	Write a get_prim method in python/perl/bash/pseudo.
•	Find all files which have been accessed within the last 30 days.
•	Explain the following command (date ; ps -ef | awk '{print $1}' | sort | uniq | wc -l ) >> Activity.log
•	Write a script to list all the differences between two directories.
•	In a log file with contents as <TIME> : [MESSAGE] : [ERROR_NO] - Human readable text display summary/count of specific error numbers that occurred every hour or a specific hour.
