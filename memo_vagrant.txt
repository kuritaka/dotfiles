# cheat sheet for vagrant

cd /p/vm_img/vagrant/centos7a ; vagrant up ; vagrant ssh
cd /p/vm_img/vagrant/centos7b ; vagrant up ; vagrant ssh
cd /p/vm_img/vagrant/centos8a ; vagrant up ; vagrant ssh
cd /p/vm_img/vagrant/centos8b ; vagrant up ; vagrant ssh




# Copy Key the other server

[vagrant@host1 ~$] ssh-copy-id  x.x.x.x
/usr/bin/ssh-copy-id: INFO: Source of key(s) to be installed: "/home/vagrant/.ssh/id_rsa.pub"
/usr/bin/ssh-copy-id: INFO: attempting to log in with the new key(s), to filter out any that are already installed
/usr/bin/ssh-copy-id: INFO: 1 key(s) remain to be installed -- if you are prompted now it is to install the new keys
Warning: Permanently added 'x.x.x.x' (ECDSA) to the list of known hosts.
vagrant@x.x.x.x's password:

Number of key(s) added: 1

Now try logging into the machine, with:   "ssh 'x.x.x.x'"
and check to make sure that only the key(s) you wanted were added.
[vagrant@2ost1 ~$] 
