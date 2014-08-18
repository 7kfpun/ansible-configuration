init:
	sudo apt-add-repository ppa:ansible/ansible
	sudo apt-get update
	sudo apt-get install ansible
	sudo apt-get install python-boto || sudo pip install boto
	rvmsudo gem install librarian-ansible
	# sudo pip install librarian-ansible

install:
	librarian-ansible install

update:
	librarian-ansible update

ssh_ec2:
	ssh ec2-54-187-119-145.us-west-2.compute.amazonaws.com

deploy_monitor:
	ansible-playbook -i monitor monitor.yml -vvvv
