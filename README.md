# Gitup

Gitup is a tool to automate git operations and task tracking. This README will guide you through installing Gitup on your local machine.

## Prerequisites

1. **Git**: Ensure Git is installed on your system.
   - Install Git: [Git Installation Guide](https://git-scm.com/book/en/v2/Getting-Started-Installing-Git)
   
2. **Go**: Gitup is written in Go. Make sure Go is installed.
   - Install Go: [Go Installation Guide](https://golang.org/doc/install)

## Installation Steps

Follow these steps to install Gitup on your laptop:

### 1. Clone the Repository

First, clone the Gitup repository to your local machine:

```bash
git clone https://github.com/HriteshMahajan/gitup.git
```

### 2. Navigate to the Repository

Change to the directory containing the Gitup code:

```bash
cd gitup
```

### 3. Build the Tool

Compile the Gitup tool using Go:

```bash
go build -o gitup
```

### 4. Install the Executable

Move the gitup executable to a directory in your system’s PATH, so it can be accessed from anywhere. For example, you can move it to /usr/local/bin:

```bash
sudo mv gitup /usr/local/bin/
```

### 5. Verify the Installation

Ensure Gitup is installed correctly by running:

```bash
sudo mv gitup /usr/local/bin/
```
