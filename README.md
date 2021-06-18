# AnsibleASIR2
Automatización y configuración centralizada de sistemas con Ansible

1) Todos los playbooks realizados en este entorno están preparados para ejecutarlos desdes el directorio de trabajo /home/automation/plays

NOTA:  para la ejecución del rol “mysql.yml” es necesario pasarle el fichero que contiene la contraseña para desencriptar el secret, esto se hace de la siguiente forma:
ansible-playbook mysql.yml --vault-password-file=vault_key

ansible-playbook mysql.yml --vault-password-file=vault_key

### Post instalación
1) En la carpeta configuraciones disponeis de información para realizar la post instalación de ansible.
- Crear claves rsa y configurar autenticación basada en clave.
- Escalado de privilegios para el usuario automation

2) Esta configuración tambien se puede realizar con el uso de comandos ad-hoc una vez hecha la instalación de ansible con el script "adhoc_command.sh" que se encuentra en la raiz de este repositorio.

