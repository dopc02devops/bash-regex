#!/bin/bash

: << 'END_COMMENT'
top command in Bash is a powerful utility for monitoring system performance in real time
END_COMMENT


Breakdown of the Key Sections:
System Summary Information:
Current Time: Shows the time at which the top command was run.
Up Time: How long the system has been running since the last reboot.
Load Average: The load averages over the last 1, 5, and 15 minutes.
Tasks: Shows the number of tasks/processes (running, sleeping, stopped, and zombie).
CPU Usage: Displays CPU usage statistics, such as user space (us), system space (sy), idle (id), etc.
Memory Usage: Shows physical memory usage, including total, free, used, and cached memory.
Swap Usage: Displays swap space usage.
Process List:
PID: Process ID.
USER: The user who owns the process.
PR: Priority of the process.
NI: Nice value, which affects the priority of the process.
VIRT: Virtual memory used by the process.
RES: Resident memory (physical memory) used by the process.
SHR: Shared memory used by the process.
S: Current process state (S for sleeping, R for running, etc.).
%CPU: Percentage of CPU used by the process.
%MEM: Percentage of memory used by the process.
TIME+: Total CPU time the process has used since it started.
COMMAND: The command name or the process being run.
Common Interactive Commands in top:
Once you run top, it enters an interactive mode where you can press various keys to control the output and behavior. Here are some commonly used key commands in top:

q: Quit top.
P: Sort processes by CPU usage (descending).
M: Sort processes by memory usage (descending).
T: Sort processes by running time.
k: Kill a process (you will be prompted to enter the PID).
r: Renice a process (change its priority).
h: Display help (shows all available commands).
c: Toggle between showing the full command line and the program name.
1: Toggle display of individual CPU usage statistics.
z: Toggle color display (if supported).


top -u username

top -p $(pgrep -d',' process_name)

top -b -n 1 > top_output.txt

-b: Runs top in batch mode (suitable for redirection).
-n 1: Limits the output to just 1 iteration (you can specify more if you want multiple iterations).

top -b -n 1 | head -n 20

You can use the -d flag to change the refresh interval (in seconds):

top -d 5