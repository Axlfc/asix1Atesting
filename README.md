MANTAIN ALIAS IN ROOT MODE #TOP PRIORITY $USER IS NOT UPDATING PER TMUX SESSION
powershell windows with bash aliases
https://tmuxp.git-pull.com/examples.html#super-advanced-dev-environment
https://github.com/tmux-python/tmuxp
https://tmuxp.git-pull.com/examples.html#bootstrap-project-before-launch
:)

forced attachedment alias!! :?
oldt attach to 'default' if already attached session
??? borrar comandes anteriors??
que desaparegui del historial?¿?
reordenar comandas de posición??
comandas en buffer >> .txt??
ncat alias??!?!?
at
tab tab does not autocomplete ;(
alias 2t=""
alias 3t=""
alias 3t=""
alias tstart=""

session 'auto' must create itself y
if no session exists every 26 seconds 
auto starts a fresh ssh server every time if it's been closed
is created as new session and controls private background ssh server

if there is another auto session 'auto' already attached 
it auto attaches to itself ignoring that it's attached by other

or if there is no 'auto' session it fresh start itself 
in background with new private ssh controled server 
every 26 seconds if there is no authentified ssh host/client connected 
it closes the session 'auto'
in case < 26 seconds and other session connected and server stills on
the 'auto' session would mantain previous ssh creds
session auto saves itself every 26 seconds 
while ssh trused opened and mantains ssh tight relation connection

borrar prints antereiores en la conosola:
Es decir, hacer desaparecer el 3, el 2o por arriba en el historial??¿ :S
standard output de los aliases en maysu :\
guardar sessiones de ssh con tls y guardar y borrarlas con ctrl+s sesions tmux?? lanzar comando como comando de bash???? :(

posar que mati tot menys default tmux :)
oldt te que entrar a la sessió default per molt que estigui duplicada

moodle en bash <-- :)
assembler unassembler (UA) in bash (nasm?)
ansible(1), 
ansible-config(1), 
ansible-console(1), 
ansible-doc(1), 
ansible-galaxy(1), 
ansible-inventory(1), 
ansible-playbook(1), 
ansible-pull(1), 
ansible-vault(1),
//
axl@:$ popd
bash: popd: la pila de directorios está vacía
axl@:$ pop
bash: popd: la pila de directorios está vacía
axl@:$ pwd
/home/axl/Escritorio/diafiles
//
https://www.fprintf.net/vimCheatSheet.html
make vim friendly

dump into /etc/profile
https://github.com/phusion/baseimage-docker/issues/54
preserve bash environment as possible, change when needed

instala y desinstala aliases necesarios via conexión ssh
:P
:sshrc??
!!!!!!!!!!!!!!!
la session ssh debe agarrar los aliases del host :S
ssh -p 2222 axl@ipi

ssh -p 2222 <user>@<ip_address>

nano ~/.ssh/config

aliases=
sudo systemctl
sudo systemctl enable ssh
#Enable SSH server on system boot
sudo systemctl list-unit-files | grep enabled | grep ssh
sudo systemctl enable ssh
sudo systemctl --type=service
sudo systemctl --type=mount
sudo systemctl -t timer 
sudo systemctl list-unit-files


SSH
sudo semanage port -a -t ssh_port_t -p tcp 2222
vim /etc/ssh/sshd_config

SSH configuration files are located at /etc/ssh/
    ssh_config: defines SSH rules for clients. It means that it defines rules that are applied 
	everytime you use SSH to connect to a remote host or to transfer files between hosts;
    sshd_config: defines SSH rules for your SSH server. It is used for example to define 
	the reachable SSH port or to deny specific users from communicating with your server.


Enabling SSH traffic on your firewall settings
sudo firewall-cmd --permanent --zone=public --add-service=ssh
sudo firewall-cmd --reload
?
sudo firewall-cmd --list-all | grep services

services : cockpit dhcpv6-client http https ssh
?
#default port in ssh = -p 22 2222
netstat -tulpn | grep :22

#usage:
ssh -p 2222 <user>@<ip_address>
#refresh path 
hash -r

Connecting to a server

ssh name@server.com  (default port is 22)
ssh name@server.com -p 8000 (connect to specific port)
ssh name@server.com -i ~/.ssh/rsa_key.pub (connect with ssh key)

.SSH Permissions

These are safe permissions to use for SSH

chmod 700 ~/.ssh
chmod 644 ~/.ssh/id_rsa.pub
chmod 600 ~/.ssh/id_rsa

# Put your pubkeys (one per line) for SSH login
chmod 600 ~/.ssh/authorized_keys

Using the Config

You can also create a ~/.ssh/config file and store entries such as:

Host aws
Hostname ec2-50-50-130-50.compute-1.amazonaws.com
Port 22
Identityfile ~/.ssh/id_rsa
User myusername

Host my-vps
Hostname 50.50.130.50
Port 22
User root

You can then simply type:

ssh aws
ssh my-vps

SSH to PEM

Sometimes you may need a PEM format SSH Key. You can easily add this alongside your other SSH keys.

openssl rsa -in ~/.ssh/keyname_rsa -outform pem > keyname_rsa.pem
chmod 700 keyname_rsa.pem


#Copy one single local file to a remote destination
scp /path/to/source-file user@host:/path/to/destination-folder/

#So, if you wan to copy the file /home/user/table.csv to a remote host named host.example.com and copy there to jane's home folder, use this command.
scp /home/user/table.csv jane@host.example.com:/home/jane/
scp jane@host.example.com:/home/jane/table.csv /home/user/

#Copy one single file from a remote server to another remote server
scp user1@server1:/path/to/file user2@server2:/path/to/folder/
scp jane@host.example.com:/home/jane/table.csv pete@host2.example.com:/home/pete/
#Copy one single file from a remote server to your current local server
scp user@host:/path/to/source-file /path/to/destination-folder

#Copy files between two remote server that are not in the same network
scp -3 user@host1:/file user@host2:/file

#Copy one single file from a remote host to the same remote host in another location
scp jane@host.example.com:/home/jane/table.csv pete@host.example.com:/home/pete/

#Copy multiple files with one command
scp file1.txt file2.txt file3.txt pete@host.example.com:/home/pete/
scp /path/to/file1.txt /path/to/file2.txt /path/to/file3.txt pete@host.example.com:/home/pete/

#Copy all files of a specific type
scp /path/to/folder/*.ext user@server:/path/to/folder/
scp /home/user/*.txt jane@host.example.com:/home/jane/

#Copy all files in a folder to a remote server
scp /path/to/folder/* user@server:/path/to/folder/
scp /home/user/html/* jane@host.example.com:/home/jane/backup/

#Copy all files in a folder recursively to a remote server
scp -r /home/user/html/* jane@host.example.com:/home/jane/backup/

#Copy a folder and all its contents to a remote server
scp -r /path/to/source-folder user@server:/path/to/destination-folder/
scp -r /home/user/html jane@host.example.com:/home/jane/backup/

#Copy files recursively preserving file attributes
scp -rp sourcedirectory user@dest:/path

#Move instead of copy files from one server to another
#This only works if you have configured your Linux ssh server to work with ssh-key instead of password
#Disabling Root Login on your SSH server
#To disable root login on your SSH server, modify the following line
'
#PermitRootLogin

PermitRootLogin no
'

#Edit the file /etc/ssh/sshd_config
for file in bar*; do scp "$file" user@server:/destination && rm "$file" ; done

#Changing SSH default port
#Edit your sshd_config configuration file and look for the following line.
'
#Port 22
'
#in bashrc profile... "~/.bash_profile"


alias webserver='ssh sk@192.168.225.22'
alias dns='ssh root@server.example.com'
alias dhcp='ssh axl@192.168.225.25 -p 2232'
alias ubuntu='ssh axl@192.168.225.50 -i ~/.ssh/id_rsa_remotesystem'

#Copy files from Windows to Linux
#You can use scp command to copy files from Linux to Windows

pscp c:\path\to\file user@remote-server:/path/to/remote-folder

#Copy files from Linux to Windows

#You can also copy files from Windows to Linux, using pscp from the Windows computer you can "push" the files to the Linux, Max OS X or *BSD server.

pscp user@remote-server:/path/to/remote-file c:\path\to\local-folder\

#Specify protocol

#You can specify the protocol that scp command for Windows will use at the time of connection.

-scp
    This will force pscp to use scp protocol
-sftp
    This will force pscp to use sftp protocol, which is a newer protocol than scp protocol
	
#I strongly recommend you to open two sessions if doing this from a remote connection, and never close one of them. Do this in case you need to roll back the configuration, this way you will not lock you out by mistake.

#locate this line with, writing this once editing with vi or vim

:/Protocol

#if it says

Protocol 2, 1

#change it to:

Protocol 2

#This will enable only ssh2 which is more secure that ssh, do not do this if you need to log with a client that only support ssh, and not ssh2 protocol. Next locate this line "PermitRootLogin yes" by entering this on your vi or vim editor

:/PermitRootLogin yes

#and change it to this:

PermitRootLogin no

#and save the file.

Disable password login for any other user in the server

Now, we need to lock the password of all other users in the server, except root, but remember that log in via root account using ssh is not permitted in the server, that way the only possible way to log into the server will be via, the public/private ssh key. To lock the password of the rest of users, use this command.

sudo passwd -l [user]

For every user, you have on that server that is allowed to log into it, it means, it has a shell. Alternate Method (Updated:10.11.10) As suggested by, Stephen, if you need local authentication, the above method of locking the users account is not possible, this is a better way: Edit the file /etc/ssh/sshd_config and be sure this line is there:

PasswordAuthentication no

The default is yes. then restart ssh, and you are done.


You will need to repeat step 1, with all users, you want to have access to the server, before, 
locking their passwords, or share the keys using a thumb key memory or any other way.

Be sure to have physical access to the server, before locking yourself out, or test your keys, 
before doing it, failing to do so, may lock you completely out of the server, you have been warned

Note 2: If you are using some account as an admin account with sudo access, to the system, 
be sure to disable the password challenge, for that user using visudo, or you will not be able to use sudo again

#MOSH TEST CASE HAVING IN COUNT

What tmux command should I use?
Most users have one tmux session per machine that they wish to either create (if needed) or attach to (if possible). Use this command:
tmux -CC new -A -s main

What ssh command should I use?
If you wish to run tmux on a remote host over ssh, use this command:
ssh -t example.com 'tmux -CC new -A -s main'
The -t argument says to use a TTY, which tmux needs to be happy.

I keep having to reattach because my ssh connection dies when my IP address changes
Use Eternal Terminal. It tunnels ssh connections over a more reliable transport and just works. Then the command is:
et -c "tmux -CC new -A -s main" example.com  (https://eternalterminal.dev/)

Eternal Terminal (ET) is a remote shell that automatically reconnects without interrupting the session.
ET uses ssh for handshaking and encryption, so you must be able to ssh into the machine from the client. Make sure that you can ssh user@hostname.
ET uses TCP, so you need an open port on your server. By default, it uses 2022.
Once you have an open port, the syntax is similar to ssh: et user@hostname[:port]
If you have SSH listening on a different port or with special parameters, this must be specified in your ssh_config file. ET will automatically use your ssh_config file when making connections.

https://www.cyberciti.biz/faq/use-bash-aliases-ssh-based-session/
