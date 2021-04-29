## Configurar autenticación basada en clave <a name="id3"></a>

```bash
[root@workstation ~]# ssh-keygen 
Generating public/private rsa key pair.
Enter file in which to save the key (/root/.ssh/id_rsa): 	ENTER
															ENTER

[root@workstation ~]# for i in server{0,1,2,3};do ssh-copy-id root@${i};done
/bin/ssh-copy-id: INFO: Source of key(s) to be installed: "/root/.ssh/id_rsa.pub"
/bin/ssh-copy-id: INFO: attempting to log in with the new key(s), to filter out any that are already installed
/bin/ssh-copy-id: INFO: 1 key(s) remain to be installed -- if you are prompted now it is to install the new keys
root@server0's password: 

Number of key(s) added: 1

Now try logging into the machine, with:   "ssh 'root@server0'"
and check to make sure that only the key(s) you wanted were added.

/bin/ssh-copy-id: INFO: Source of key(s) to be installed: "/root/.ssh/id_rsa.pub"
/bin/ssh-copy-id: INFO: attempting to log in with the new key(s), to filter out any that are already installed
/bin/ssh-copy-id: INFO: 1 key(s) remain to be installed -- if you are prompted now it is to install the new keys
root@server1's password: 

Number of key(s) added: 1

Now try logging into the machine, with:   "ssh 'root@server1'"
and check to make sure that only the key(s) you wanted were added.

/bin/ssh-copy-id: INFO: Source of key(s) to be installed: "/root/.ssh/id_rsa.pub"
/bin/ssh-copy-id: INFO: attempting to log in with the new key(s), to filter out any that are already installed
/bin/ssh-copy-id: INFO: 1 key(s) remain to be installed -- if you are prompted now it is to install the new keys
root@server2's password: 

Number of key(s) added: 1

Now try logging into the machine, with:   "ssh 'root@server2'"
and check to make sure that only the key(s) you wanted were added.

/bin/ssh-copy-id: INFO: Source of key(s) to be installed: "/root/.ssh/id_rsa.pub"
/bin/ssh-copy-id: INFO: attempting to log in with the new key(s), to filter out any that are already installed
/bin/ssh-copy-id: INFO: 1 key(s) remain to be installed -- if you are prompted now it is to install the new keys
root@server3's password: 

Number of key(s) added: 1

Now try logging into the machine, with:   "ssh 'root@server3'"
and check to make sure that only the key(s) you wanted were added.

[root@workstation ~]# 

```

