#!/bin/bash

# Creado por: Walter Castro
# Este script crea lo necesario para que el usuario automation pueda operar con ansible sobre los nodos gestionados
# utilizando comandos adhoc.

#NOTA: Es necesario usar --ask-pass  ya que no esta hecha aun la autenticacion basada en claves previamente.


###crea el usuario automation en todos los nodos gestionados y les pasa como contraseña 'devops' ###
ansible all -m user -a "state=present name=automation password={{ 'devops' | password_hash('sha512') }}" --user=root --ask-pass

### realiza el cruce de claves  ###
ansible all -m authorized_key -a "user=automation key=\"{{ lookup('file', '/home/automation/.ssh/id_rsa.pub') }}\" state=present" --user=root --ask-pass

### crea fichero para que automation pueda elevar privilegios ###
ansible all -m copy -a 'dest=/etc/sudoers.d/automation content="automation ALL=(ALL) NOPASSWD: ALL\n"' -u root --ask-pass  	
