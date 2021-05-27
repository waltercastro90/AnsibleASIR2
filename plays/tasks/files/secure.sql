-- Securizacion de la instalacion - Last Update: 24-Feb-2021
-- Poner password redhat al usuario root
UPDATE mysql.user SET Password=PASSWORD('redhat') WHERE User='root';

-- Eliminar usuario anonimo
DELETE FROM mysql.user WHERE User='';

-- El usuario root no se puede conectar desde el exterior
DELETE FROM mysql.user WHERE User='root' AND Host NOT IN ('localhost', '127.0.0.1', '::1');

-- Eliminar la BBDD de test
DROP DATABASE IF EXISTS test;
DELETE FROM mysql.db WHERE Db='test' OR Db='test\\_%';

-- Usuario para poder conectar desde el exterior, usuario ansible con password asible
GRANT ALL PRIVILEGES ON world.* TO 'ansible'@'%' IDENTIFIED BY 'ansible' WITH GRANT OPTION;

-- Recarga privilegios
FLUSH PRIVILEGES;
