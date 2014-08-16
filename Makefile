init:
	sudo apt-get install python-boto
	sudo pip install librarian-ansible

install:
	librarian-ansible install

update:
	librarian-ansible update

ssh_ec2:
	ssh ec2-54-187-119-145.us-west-2.compute.amazonaws.com
