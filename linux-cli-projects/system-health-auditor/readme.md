# System Health Report – Shell Script

A Bash-based **System Health Reporting script** that generates a detailed snapshot of a Linux system’s current state, including CPU-intensive processes, memory usage, disk usage, open ports, running process count, and recent critical system errors.

This script is designed for **learning Linux system monitoring, shell scripting, and DevOps fundamentals**.

---

## Overview

The System Health Report script collects and displays real-time system information in a **structured, readable format** directly in the terminal.  
It uses standard Linux utilities to provide visibility into system performance, resource usage, and basic security-related information.

---

## Features

- Displays current **date and time**
- Shows **hostname** and **system uptime**
- Lists **top CPU-consuming processes**
- Displays **memory usage**
- Displays **disk usage**
- Shows total **running process count**
- Lists **open listening ports**
- Displays **recent critical system errors** (requires root privileges)
- Clean, sectioned terminal output

---

## Technologies Used

- Bash (Shell Scripting)
- Linux system utilities:
  - `ps`
  - `free`
  - `df`
  - `ss`
  - `journalctl`
  - `uptime`
  - `hostname`

---

## Project Structure

