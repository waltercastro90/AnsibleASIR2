## Configuración de la red<a name="id2.2"></a>

````bash
**NOTA: Se aplica el mismo procedimiento para configurar el resto de nodos.**

[student@workstation ~]$ nmcli connection modify "enp0s3" ipv4.addresses 20.20.20.254/24 ipv4.dns 1.1.1.1 +ipv4.dns 1.0.0.1 method 
method
[student@workstation ~]$ nmcli connection modify "enp0s3" ipv4.addresses 20.20.20.254/24 ipv4.dns 1.1.1.1 +ipv4.dns 1.0.0.1 method  
auto  none  
[student@workstation ~]$ nmcli connection modify "enp0s3" ipv4.addresses 20.20.20.254/24 ipv4.dns 1.1.1.1 +ipv4.dns 1.0.0.1 autoconnect yes  
[student@workstation ~]$ 
[student@workstation ~]$ nmcli connection up "enp0s3"
Connection successfully activated (D-Bus active path: /org/freedesktop/NetworkManager/ActiveConnection/3)
[student@workstation ~]$ 
[student@workstation ~]$ nmcli connection show "enp0s3"

````


## Testing de  red<a name="id2.3"></a>
````bash
[student@workstation ~]$ for HOSTS in server{0..3};do ping -c2 ${HOSTS};done
PING server0.lab.example.com (20.20.20.20) 56(84) bytes of data.
64 bytes from server0.lab.example.com (20.20.20.20): icmp_seq=1 ttl=64 time=0.339 ms
64 bytes from server0.lab.example.com (20.20.20.20): icmp_seq=2 ttl=64 time=0.450 ms

--- server0.lab.example.com ping statistics ---
2 packets transmitted, 2 received, 0% packet loss, time 21ms
rtt min/avg/max/mdev = 0.339/0.394/0.450/0.058 ms
PING server1.lab.example.com (20.20.20.21) 56(84) bytes of data.
64 bytes from server1.lab.example.com (20.20.20.21): icmp_seq=1 ttl=64 time=0.550 ms
64 bytes from server1.lab.example.com (20.20.20.21): icmp_seq=2 ttl=64 time=0.578 ms

--- server1.lab.example.com ping statistics ---
2 packets transmitted, 2 received, 0% packet loss, time 30ms
rtt min/avg/max/mdev = 0.550/0.564/0.578/0.014 ms
PING server2.lab.example.com (20.20.20.22) 56(84) bytes of data.
64 bytes from server2.lab.example.com (20.20.20.22): icmp_seq=1 ttl=64 time=1.42 ms
64 bytes from server2.lab.example.com (20.20.20.22): icmp_seq=2 ttl=64 time=0.491 ms

--- server2.lab.example.com ping statistics ---
2 packets transmitted, 2 received, 0% packet loss, time 4ms
rtt min/avg/max/mdev = 0.491/0.956/1.421/0.465 ms
PING server3.lab.example.com (20.20.20.23) 56(84) bytes of data.
64 bytes from server3.lab.example.com (20.20.20.23): icmp_seq=1 ttl=64 time=0.402 ms
64 bytes from server3.lab.example.com (20.20.20.23): icmp_seq=2 ttl=64 time=0.601 ms

--- server3.lab.example.com ping statistics ---
2 packets transmitted, 2 received, 0% packet loss, time 34ms
rtt min/avg/max/mdev = 0.402/0.501/0.601/0.101 ms
[student@workstation ~]$ 


````