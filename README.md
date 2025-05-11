# Ubuntu Configuration Script

A simple setup script to configure a fresh Ubuntu system with basic tools, firewall protection, and user setup options.



## Features

- System update and upgrade
- Installs essential tools (`curl`, `git`)
- Installs and configures UFW (Uncomplicated Firewall)
- Optionally creates a new non-root user with sudo access
- Installs GNOME Tweaks (for desktop customization)

---

## Requirements

- Ubuntu 20.04 or newer
- Root or sudo privileges

---

## Installation

1. Clone the repository:
    ```bash
- git clone https://github.com/Dis-neu/ubuntu-firstboot.git
- cd ubuntu-firstboot

2. Make the setup script executable:

- chmod +x setup.sh

3. Run the script:

- sudo ./setup.sh
