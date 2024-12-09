It is the organizational structure used to manage, store, retrieve, and modify data. It’s hierarchical, with 
a root directory (/) at the top, and all other files and directories branching down from it

####################### 
# Directory Structure
#######################
- / (Root): The starting point of the file system
   cd / (Navigate to root directory)
- /bin: Contains essential binaries (programs) needed for system operation
- /boot: Holds files needed to boot the system
- /dev: Contains device files, which are special files that represent devices like disks, USBs, and other 
   peripherals (e.g., sda for a primary hard drive)
- /etc: Stores configuration files for the system and applications. Examples include system initialization scripts 
   and network configuration files
- /home: User home directories are stored here, with each user having a separate directory (e.g., /home/username)
- /lib: Contains shared libraries used by system programs, similar to DLL files on Windows
- /media and /mnt: Mount points for removable media, like USB drives and CD-ROMs, as well as temporary file systems
- /opt: Optional software or add-on packages usually install here
- /proc: A virtual file system that contains information about system processes and kernel parameters. 
   Files here are created dynamically and provide system insights, such as CPU information (/proc/cpuinfo)
- /root: The home directory for the root (superuser) account
- /run: Holds runtime data used by processes started since the last boot
- /sbin: Contains system binaries used by the superuser for system administration tasks (e.g., shutdown, fdisk)
- /srv: Contains data for services offered by the system, like web and FTP data
- /sys: A virtual file system that gives information about devices, drivers, and other kernel modules
- /tmp: Temporary files are stored here. This directory is usually cleared on each reboot
- /usr: User applications and files that are not critical for basic system functioning are stored here
   Common subdirectories include /usr/bin (user binaries), /usr/lib (user libraries), and /usr/share (shared resources)
- /var: Contains variable data files, like logs (/var/log), databases, and web servers

######################
# File Types in Linux
######################
- Linux treats everything as a file, and files can have different types
1) Regular Files: Most common file type for text, binary, or executable data
2) Directories: Files that contain other files
3) Device Files: Represent hardware devices 
4) Links: Shortcuts to other files, with two types:
  - Symbolic Links (symlinks): Like shortcuts, can point to directories or files
  - Hard Links: Point directly to data on the disk, sharing the same inode as the target file 
5) Sockets: Allow inter-process communication

################################
# File Permissions and Ownership
################################
1) Read (r): Allows viewing the contents of a file or listing the contents of a directory
2) Write (w): Allows modifying the contents of a file or adding/removing files in a directory
3) Execute (x): Allows executing a file (if it’s a program or script) or accessing a directory

##########################################
# Permissions are assigned to three groups
##########################################
1) User (u): The owner of the file
2) Group (g): A group that the user belongs to 
3) Other (o): Everyone else

- Permissions are represented with three sets of characters (e.g., rwxr-xr--).

###########################
# Mounting and File Systems
###########################
- Linux supports various file systems, such as
1) ext4: Default for many distributions; reliable and supports journaling 
2) XFS: High-performance journaling file system 
3) Btrfs: Newer file system with advanced features, like snapshots 
4) NTFS, FAT32: Commonly used for compatibility with Windows

###############################################
# Important Commands for File System Management
###############################################
   ls: Lists files in a directory
   cd: Changes the current directory
   cp: Copies files or directories
   mv: Moves or renames files
   rm: Deletes files or directories
   chmod: Changes file permissions
   chown: Changes file ownership
   ln: Creates hard or symbolic links
   mount / umount: Mounts or unmounts a filesystem
   df: Shows disk space usage of file systems
   du: Estimates file space usage