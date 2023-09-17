# codeploy.org - Paving the path to digital enlightenment...

Deploying infrastructure using code is a mindful act of weaving the digital tapestry with logic and creativity, where each line of code invokes the spirits of automation and scalability, ultimately reflecting the interconnected web of existence in the virtual universe.

## Prerequisites

### Grant user sudo-rights

`su root`

`/usr/sbin/usermod -aG sudo $USER`

`/usr/sbin/reboot`

### Install ansible from repo

#### Install Ansible

`sudo apt install -y ansible`

#### Create symbolic link to Python3 

`sudo ln -s /usr/bin/python3 /usr/bin/python`

#### Install community collections

`ansible-galaxy collection install community.general`

## Machines

| Name | Brand | Type |
| --- | --- | --- |
| debian12.lab.home | QEMU | Standard PC (Q35 + ICH9, 2009) |
| bookworm.lab.corp | VMware, Inc.| VMware Virtual Platform |
| desktop.lab.corp | Acer | Aspire M7811 |
| a1369.lab.home | Apple Inc. | MacBookAir4,2 |
| xps7590.lab.home | Dell Inc. | XPS 15 7590 |
| e6420.lab.home | Dell Inc. | Latitude E6420 |
| e6430.lab.home | Dell Inc. | Latitude E6430 |
