# This file is part of CODEPLOY.ORG.
#
# CODEPLOY.ORG is free software: you can redistribute it and/or modify it under the terms of the GNU General Public License as published by the Free Software Foundation, either version 3 of the License, or (at your option) any later version.
#
# CODEPLOY.ORG is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License along with CODEPLOY.ORG. If not, see <https://www.gnu.org/licenses/>. 

# Check if Ansible is installed, if not install
apt_app="ansible"
apt list --installed $apt_app | grep -i $apt_app || sudo apt install -y $apt_app

# Set Ansible config and start accordingly
export ANSIBLE_CONFIG=./deploy/ansible.cfg 
ansible-playbook ./deploy/playbook.yml