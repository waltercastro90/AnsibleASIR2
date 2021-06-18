# AnsibleASIR2
Automatización y configuración centralizada de sistemas con Ansible

1) Todos los playbooks realizados en este entorno están preparados para ejecutarlos desdes el directorio de trabajo /home/automation/plays

NOTA:  para la ejecución del rol “mysql.yml” es necesario pasarle el fichero que contiene la contraseña para desencriptar el secret, esto se hace de la siguiente forma:
ansible-playbook mysql.yml --vault-password-file=vault_key

ansible-playbook mysql.yml --vault-password-file=vault_key
