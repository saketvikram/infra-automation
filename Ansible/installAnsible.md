1 sudo apt-add-repository ppa:ansible/ansible <br>
2 sudo apt-get update <br>
3 sudo apt-get install ansible

Running Ansible on Ansible host locally
1 ansible all -i "localhost," -c local -m shell -a 'echo hello world' <br>
2 Add an entry for localhost to default inventory file /etc/ansible/hosts: <br>
localhost ansible_connection=local <br>
3 Command listed in step 1 will become <br>
  ansible all -m shell -a 'echo hello world’ <br>
