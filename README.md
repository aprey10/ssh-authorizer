# ssh-authorizer

#### Script which allows to skip entering password or passphrase when working with remote Linux host through SSH.

##### Usage example:

If you have a script which runs commands on a remote machine, by default, you will have to enter password or ssh keys passphrase each time when remote command is executed.

Instead, you can execute `ssh-authorizer` once and you won't need entering anything anymore:  

`./ssh-authorizer.sh -host root@10.0.23.14`

##### Requirements:

- Generated SSH keys;
- `ssh-agent` on your system. 
