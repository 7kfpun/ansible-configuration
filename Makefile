.PHONY: help
# target: help - Display callable targets
help:
	@egrep "^# target:" [Mm]akefile | sed -e 's/^# target: //g'

init:
	@sudo apt-add-repository ppa:ansible/ansible
	@sudo apt-get update
	@sudo apt-get install ansible
	@sudo apt-get install python-boto || sudo pip install boto
	@sudo apt-get install nfs-kernel-server
