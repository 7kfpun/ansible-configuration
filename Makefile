.PHONY: help
# target: help - Display callable targets
help:
	@egrep "^# target:" [Mm]akefile | sed -e 's/^# target: //g'

.PHONY: init
init:
	@sudo apt-add-repository ppa:ansible/ansible
	@sudo apt-get update
	@sudo apt-get install ansible
	@sudo apt-get install python-boto || sudo pip install boto
	@sudo apt-get install nfs-kernel-server

.PHONY: install
# target: install - Install playbooks
install:
	@ansible-galaxy install -fr requirements.txt
