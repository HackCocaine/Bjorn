


# <img src="https://github.com/user-attachments/assets/3d1e6d0d-d89e-473e-bc2e-d65b9d7c8e77" alt="thumbnail_IMG_0546" width="33"> BjornCocaine

![Python](https://img.shields.io/badge/Python-3776AB?logo=python&logoColor=fff)
![Status](https://img.shields.io/badge/Status-Development-blue.svg)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

[![Reddit](https://img.shields.io/badge/Reddit-Bjorn__CyberViking-orange?style=for-the-badge&logo=reddit)](https://www.reddit.com/r/Bjorn_CyberViking)
[![Discord](https://img.shields.io/badge/Discord-Join%20Us-7289DA?style=for-the-badge&logo=discord)](https://discord.com/invite/B3ZH9taVfT)

<p align="center">
  <img src="https://github.com/user-attachments/assets/c5eb4cc1-0c3d-497d-9422-1614651a84ab" alt="thumbnail_IMG_0546" width="150">
  <img src="https://github.com/user-attachments/assets/1b490f07-f28e-4418-8d41-14f1492890c6" alt="bjorn_epd-removebg-preview" width="150">
    <img src="https://github.com/user-attachments/assets/3d1e6d0d-d89e-473e-bc2e-d65b9d7c8e77" alt="HackCocaine" width="150">

</p>

*BjornCocaine is a forked project intended to extend the capabilities of the original repository for real-world scenarios and more complex setups. This repository is not the original and is tailored for expanded use cases.
**For the original experience (e.g., Pi Zero with e-Paper HAT), please refer to the original repository.***


## 📄 Introduction

Bjorn is a powerful tool designed to perform comprehensive network scanning, vulnerability assessment, and offensive security tasks. This fork builds upon the original tool to:

Run on any Raspberry Pi device.

Extend capabilities for real-world red team scenarios.

Address community-requested features and additions.

Note: Testing and development for this fork are conducted on a Raspberry Pi 4 B (8GB RAM). While the fork aims for compatibility across devices, the Pi 4 serves as the baseline.


## 🌟 Purposes and Motivations

***Make Bjorn run on any Raspberry Pi device, regardless of the attached screen.***

*Extend capabilities to address realistic red team use cases.*

*Incorporate solutions for community-reported issues and requested features.*


## 🌟 Features

**Network Scanning:** Identifies live hosts and open ports on the network.

**Vulnerability Assessment:** Performs vulnerability scans using Nmap and other tools.

**System Attacks:** Conducts brute-force attacks on various services (FTP, SSH, SMB, RDP, Telnet, SQL).

**File Stealing:** Extracts data from vulnerable services.

**User Interface:** Operates seamlessly without requiring an attached screen.

![image](https://github.com/user-attachments/assets/2968f991-a243-4671-931b-f8ae7178e1ea)


## 🚀 Getting Started

## 📋 Prerequisites

A Raspberry Pi device (Pi 4 B recommended for optimal performance).

Proper networking setup (Wi-Fi or Ethernet).

Raspberry Pi OS installed.

System: 32-bit or 64-bit.

Kernel version: 6.6.

Debian version: 12 (Bookworm).

Working versions I tested (Raspberry Pi4B):

64BITS https://downloads.raspberrypi.com/raspios_lite_arm64/images/raspios_lite_arm64-2024-10-28/

32BITS https://downloads.raspberrypi.com/raspios_lite_armhf/images/raspios_lite_armhf-2024-10-28/

### 🔨 Installation

**AUTO:**

Give e good amount of Cocaine and automatic install this version using bash commands below :

Please remember to use only the first Option (1. None) When installing, otherwise problems will happen since only that option is fully tested.


```bash
# Download and run the installer
wget https://raw.githubusercontent.com/HackCocaine/Bjorn/refs/heads/main/install_bjorn.sh
sudo chmod +x install_bjorn.sh && sudo ./install_bjorn.sh
# Choose the choice 1 for automatic installation. It may take a while as a lot of packages and modules will be installed. You must reboot at the end.
```


**MANUAL:** 
- Install a clean OS from above in your PI MicroSD
- Run installation script from Original creator | [Installation](https://github.com/infinition/Bjorn?tab=readme-ov-file#-prerequisites)
- Select a random screen (If you don't have one of the supported ones)
- Replace following files:

|Files to replace|
|-|
|shared.py
|epd_helper.py|
|Bjorn.py|
|/resourcs/waveshare_epd/epdconfig.py| 
|/web/index.html|
|webapp.py|
-----------------------------------------------------------
|(**shared_config.json**)|
|-|
| "epd_type": "none" |

You will find all on your directories:



![image](https://github.com/user-attachments/assets/0b0208e1-2ac2-4f5c-b8ba-544148345015)


**My Setup**
[Sreen and Case](https://www.amazon.com/-/es/Raspberry-ventilador-refrigeraci%C3%B3n-disipador-resoluci%C3%B3n/dp/B0936R564K/ref=sr_1_4?__mk_es_US=%C3%85M%C3%85%C5%BD%C3%95%C3%91&sr=8-4)
[RaspberryPi4](https://raspberrypi.cl/producto/raspberry-pi-4-modelo-b-8gb-ram/)
[OS](https://downloads.raspberrypi.com/raspios_lite_armhf/images/raspios_lite_armhf-2024-10-28/)


For **detailed information** about **installation** process go to original [Install Guide](INSTALL.md)

## ⚡ HELP?

For **detailed information** about **troubleshooting** go to original [Troubleshooting](TROUBLESHOOTING.md)

Known Issues:
- **Screen support has been disabled completely and WebUI is the main interface you will use**, this is until I can make an universal adaptable screen support script.
- It seems to be some trouble generating logs for the tool, in order to address them and for further extension, I created a "**LOGS**" **button on the WebUI.**
- SSH Only working through Wi-Fi or Ethernet (For Pi4 seems to be a problem with usb driver).

![image](https://github.com/user-attachments/assets/3f33b789-57f3-404f-b07c-b8c410502cd2)

![image](https://github.com/user-attachments/assets/fb10dddf-77f7-4c3f-98af-2e4a327d7dc9)


## 💡 Usage Example

Here's a demonstration of how Bjorn autonomously hunts through your network like a Viking raider (fake demo for illustration):

```bash
# Reconnaissance Phase
[NetworkScanner] Discovering alive hosts...
[+] Host found: 192.168.1.100
    ├── Ports: 22,80,445,3306
    └── MAC: 00:11:22:33:44:55

# Attack Sequence 
[NmapVulnScanner] Found vulnerabilities on 192.168.1.100
    ├── MySQL 5.5 < 5.7 - User Enumeration
    └── SMB - EternalBlue Candidate

[SSHBruteforce] Cracking credentials...
[+] Success! user:password123
[StealFilesSSH] Extracting sensitive data...

# Automated Data Exfiltration
[SQLBruteforce] Database accessed!
[StealDataSQL] Dumping tables...
[SMBBruteforce] Share accessible
[+] Found config files, credentials, backups...
```


⚠️ **For educational and authorized testing purposes only** ⚠️


## 📫 Contact

- **Report Issues**: Via GitHub.
Anything else on my TG @HackCocaine

## 📜 License

2024 - Bjorn is distributed under the MIT License. For more details, please refer to the [LICENSE](LICENSE) file included in this repository.
