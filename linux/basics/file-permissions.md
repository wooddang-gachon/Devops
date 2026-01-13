# 🔐 Linux File Permissions – Beginner Guide

This document explains basic Linux file permissions and essential commands for beginners.

--------------------------------------------------

WHAT ARE FILE PERMISSIONS?

Linux controls who can READ, WRITE, or EXECUTE a file or directory.

User Types:
u  → Owner (user)
g  → Group
o  → Others

Permission Types:
r  → Read
w  → Write
x  → Execute

--------------------------------------------------

VIEWING FILE PERMISSIONS

Command:
  ls -l

Example Output:
  -rw-r--r-- 1 user group 1234 Jan 1 file.txt

### Permission Meaning

```text
-rw-r--r--
│ │  │  │
│ │  │  └── Others permissions (r--)
│ │  └───── Group permissions (r--)
│ └──────── Owner permissions (rw-)
└────────── File type (-)
```

--------------------------------------------------

FILE TYPES

-   Regular file
d   Directory
l   Symbolic link

--------------------------------------------------

PERMISSION VALUES

Read (r)    = 4
Write (w)   = 2
Execute (x) = 1

Examples:
rwx = 4 + 2 + 1 = 7
rw- = 4 + 2     = 6
r-x = 4 + 1     = 5
r-- = 4         = 4

--------------------------------------------------

CHANGING PERMISSIONS (chmod)

Symbolic Method:
  chmod u+x file.sh
  chmod g+w file.txt
  chmod o-r file.txt
  chmod u=rwx script.sh

Symbols:
+  Add permission
-  Remove permission
=  Set exact permission

--------------------------------------------------

NUMERIC METHOD (Beginner Friendly)

  chmod 644 file.txt
  chmod 755 script.sh
  chmod 700 private.sh

Meaning:
7 = rwx
6 = rw-
5 = r-x
4 = r--

--------------------------------------------------

MAKING A FILE EXECUTABLE

  chmod +x script.sh
  ./script.sh

--------------------------------------------------

CHANGING FILE OWNER (chown)

Change owner:
  chown username file.txt

Change owner and group:
  chown username:groupname file.txt

--------------------------------------------------

IMPORTANT BEGINNER NOTES

- Directories require EXECUTE (x) permission to open
- Avoid using chmod 777
- Always check permissions using ls -l
- Practice in a test directory

--------------------------------------------------

QUICK COMMAND SUMMARY

ls -l        → View permissions
chmod        → Change permissions
chmod +x     → Make executable
chown        → Change owner

--------------------------------------------------

Happy Learning 🐧
