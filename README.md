ansible-configuration
=====================

Ansible configuration for Vagrant development environment and configuring

You should have the following installed:
- [VirtualBox]: see [VirtualBox_download] for how to install VirtualBox.
- [Vagrant] 1.6.x: see [Vagrant_download] for how to install vagrant.
- [Ansible] 1.8.x: you can get ansible through *pip install ansible*.

[VirtualBox]:https://www.virtualbox.org
[VirtualBox_download]:https://www.virtualbox.org/wiki/Downloads
[Vagrant]:http://www.vagrantup.com/
[Vagrant_download]:https://www.vagrantup.com/downloads.html
[Ansible]:http://docs.ansible.com/intro_installation.html


Step
====

Clone project:

    $ git clone git@github.com:7kfpun/ansible-configuration.git
    $ cd ansible-configuration


Install Ansible libraries:

    $ ansible-galaxy install -r --force requirements.txt
    ==> downloading role 'build-essential', owned by ANXS
    no version specified, installing v1.0.1
    - downloading role from https://github.com/ANXS/build-essential/archive/v1.0.1.tar.gz
    - extracting ANXS.build-essential to ./roles/ANXS.build-essential
    ANXS.build-essential was installed successfully
    downloading role 'postgresql', owned by ANXS
    no version specified, installing v1.1.0
    - downloading role from https://github.com/ANXS/postgresql/archive/v1.1.0.tar.gz
    - extracting ANXS.postgresql to ./roles/ANXS.postgresql
    ANXS.postgresql was installed successfully


After all the prerequisities met, you can boot an developing machine:

    $ vagrant up
    ==> default: Running provisioner: ansible...
    < PLAY [Configure servers (base)] >
    ---------------------------------
            \   ^__^
            \  (oo)\_______
                (__)\       )\/\
                    ||----w |
                    ||     ||


    _________________
    < GATHERING FACTS >
    -----------------
            \   ^__^
            \  (oo)\_______
                (__)\       )\/\
                    ||----w |
                    ||     ||


    ok: [default]


Provision:

    $ vagrant provision
    ==> default: Running provisioner: ansible...


Access machine:

    $ vagrant ssh
    ==> Welcome to Ubuntu 14.04.2 LTS (GNU/Linux 3.13.0-46-generic x86_64)

    * Documentation:  https://help.ubuntu.com/

    System information as of Thu Mar 12 10:08:12 UTC 2015

    System load:  0.0               Processes:           99
    Usage of /:   2.8% of 39.34GB   Users logged in:     0
    Memory usage: 6%                IP address for eth0: 10.0.2.15
    Swap usage:   0%                IP address for eth1: 33.33.33.10

    Graph this data and manage this system at:
        https://landscape.canonical.com/

    Get cloud support with Ubuntu Advantage Cloud Guest:
        http://www.ubuntu.com/business/services/cloud

    0 packages can be updated.
    0 updates are security updates.


    Last login: Thu Mar 12 10:08:12 2015 from 10.0.2.2
    vagrant@local:~$


Troubleshooting
===============

    1. Enable Virtualization Technology (vt-x) in BIOS

    If the provider you're using has a GUI that comes with it,
    it is often helpful to open that and watch the machine, since the
    GUI often has more helpful error messages than Vagrant can retrieve.
    For example, if you're using VirtualBox, run vagrant up while the
    VirtualBox GUI is open.


    2. ImportError: cannot import name IncompleteRead

    $ easy_install -U pip
