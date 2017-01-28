ansible-playbook -s --ask-su-pass playbook.yml
test
password devct


add share folder

1)Create wwww folder
 var$ sudo mkdir www


2) add user to group 
 --www-data
 vboxsf

 for example;
 usermod -a -G <group> <username>
 usermod -a -G vboxsf ct

3) install virtualbox-guest-dkms
 sudo apt-get install virtualbox-guest-dkms

install sudo apt-get install php5-curl

4) yii2 enable this
runtime/gii-2.0.7$ sudo chmod 775 yii-gii-generators-model-Generator.json 

--

So to add ownership and automatically mount in virtualbox via vboxsf in Ubuntu add to the /etc/rc.local file before the exit 0 line the command as follows:

mount -t vboxsf -o uid=1000,gid=1000 <folder name given in VirtualBox> /home/<user>/where/ever/you/want
# userid is for "user", gid is for "www-data"
mount -t vboxsf -o uid=1000,gid=33,dmode=775 www /var/www

