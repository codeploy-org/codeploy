# codeploy.org - Paving the path to digital enlightenment...

Deploying infrastructure using code is a mindful act of weaving the digital tapestry with logic and creativity, where each line of code invokes the spirits of automation and scalability, ultimately reflecting the interconnected web of existence in the virtual universe.

## Prerequisites

### Supported OS version

Based on imperial studies codeploy.org supports the following operating systems

*   [Debian](https://www.debian.org/) [12 - Bookworm]()


### Grant user sudo-rights to current user

`su root`

`/sbin/usermod -aG sudo $USER`

### Comment out the cdrom: reference from the APT sources list from Debian-based distributions

`sed -i '/^deb cdrom:/ s/^/# /I' /etc/apt/sources.list`

### Reboot system to make changes effective

`/sbin/reboot`

## Creating an Operating System image

_To do_

## Provision the image over multiple machines

_To do_

## Starting the deployment

The deployment consists of the configuring the OS, installing and configuring applications and finalizing the deployment. 

Start the playbook by running, using your regular account.

`./start_deploy.sh`

## Machines details gathered from facts

| Name | Brand | Type |
| --- | --- | --- |
| debian12.lab.home | QEMU | Standard PC (Q35 + ICH9, 2009) |
| bookworm.lab.corp | VMware, Inc.| VMware Virtual Platform |
| a1369.lab.home | Apple Inc. | MacBookAir4,2 |
| xps7590.lab.home | Dell Inc. | XPS 15 7590 |
| e6420.lab.home | Dell Inc. | Latitude E6420 |
| e6430.lab.home | Dell Inc. | Latitude E6430 |
