[sre-hosts:vars]
ansible_ssh_private_key_file=./${ key_name }.pem
ansible_ssh_user=ubuntu

[sre-hosts]
${ sre-instance }
