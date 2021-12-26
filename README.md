# productivity
## Ansible
Run the script to install everything in fem.yml:
> ansible-playbook fem.yml

Only install specifig packages via tags:

> ansible-playbook -t zsh fem.yml

or

> ansible-playbook -t node fem.yml
