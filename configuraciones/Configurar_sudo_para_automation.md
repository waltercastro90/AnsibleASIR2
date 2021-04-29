## Escalado de privilegios <a name="id4"></a>
````bash
[root@workstation ~]# for i in server{0,1,2,3};do ssh root@${i} "echo 'automation ALL=(ALL) NOPASSWD: ALL' >> /etc/sudoers.d/automation";done
[root@workstation ~]# 

[root@workstation ~]# for i in server{0,1,2,3};do ssh root@${i} "ls -l /etc/sudoers.d/automation && cat /etc/sudoers.d/automation";done
-rw-r--r--. 1 root root 35 Apr 16 16:41 /etc/sudoers.d/automation
automation ALL=(ALL) NOPASSWD: ALL
-rw-r--r--. 1 root root 35 Apr 16 16:41 /etc/sudoers.d/automation
automation ALL=(ALL) NOPASSWD: ALL
-rw-r--r--. 1 root root 35 Apr 16 16:41 /etc/sudoers.d/automation
automation ALL=(ALL) NOPASSWD: ALL
-rw-r--r--. 1 root root 35 Apr 16 16:41 /etc/sudoers.d/automation
automation ALL=(ALL) NOPASSWD: ALL
[root@workstation ~]# 

````