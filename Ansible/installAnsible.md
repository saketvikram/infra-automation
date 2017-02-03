1 sudo apt-add-repository ppa:ansible/ansible
2 sudo apt-get update
3 sudo apt-get install ansible

Running Ansible on Ansible host locally
1 ansible all -i "localhost," -c local -m shell -a 'echo hello world'
2 Add an entry for localhost to default inventory file /etc/ansible/hosts:
localhost ansible_connection=local
3 Command listed in step 1 will become
  ansible all -m shell -a 'echo hello world’