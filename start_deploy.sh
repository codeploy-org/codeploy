# This file is part of CODEPLOY.ORG.
#
# CODEPLOY.ORG is free software: you can redistribute it and/or modify it under the terms of the GNU General Public License as published by the Free Software Foundation, either version 3 of the License, or (at your option) any later version.
#
# CODEPLOY.ORG is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License along with CODEPLOY.ORG. If not, see <https://www.gnu.org/licenses/>. 

# Ensure the latest changes are pulled

if [ -d ~/codeploy ]; then
    echo git pull
    cd ~/codeploy
    git pull
else
    echo git clone
    git clone https://github.com/codeploy-org/codeploy ~/codeploy
    cd ~/codeploy
fi

# Check if Ansible is installed, if not install
apt_app="ansible"
apt list --installed $apt_app | grep -i $apt_app || sudo apt install -y $apt_app

sudo apt install python3-psutil

source ~/Documents/drive/env-settings/*

# Include community collection

ansible-galaxy collection install -v -r ./deploy/requirements/collection-community-general.yml

# Set Ansible config and start accordingly
export ANSIBLE_CONFIG=./deploy/ansible.cfg 
ansible-playbook ./deploy/playbook.yml
