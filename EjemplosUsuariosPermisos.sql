select * from sys_config;
use mysql;
show tables;

#crear usuario con contraseña puntual
create user prueba1@localhost identified by "Password.01";
select * from user;

#cambiar password
alter user prueba1@localhost identified by "nuevaPassword.01";

#cambiar nombre usuario
Rename	user prueba1@localhost to coderhouse@localhost;
select * from user;

#Eliminar usuario
drop user coderhouse@localhost;
select * from user;

CREATE USER prueba1@localhost identified by "Coder1234_";
SELECT * FROM user;
alter user prueba1@localhost identified by "Coder1234@";
Rename	user prueba1@localhost to coderhouse@localhost;
select * from user;

SHOW GRANTS FOR coderhouse@localhost;
SHOW GRANTS FOR root@localhost;

#Otorgarle todos los permisos al usuario
grant all on *.* to coderhouse@localhost;
SHOW GRANTS FOR coderhouse@localhost;
SELECT * FROM mysql.user where user LIKE 'coderhouse';

#Otorgar permiso sobre tabla(s) 
#UNA TABLA
GRANT ALL ON gammers_model.level_game to coderhouse@localhost;

#Mas de una tabla
GRANT ALL ON gammers_model.class to coderhouse@localhost;
GRANT ALL ON gammers_model.game to coderhouse@localhost;

#OTORGAR PERMISOS SELECTIVOS
GRANT SELECT, UPDATE ON gammers_model.level_game to coderhouse@localhost;

#OTORGAR PERMISOS SOBRE COLUMNAS
GRANT UPDATE, SELECT (description) ON gammers_model.level_game TO coderhouse@localhost;

SHOW GRANTS FOR coderhouse@localhost;

#QUITAR TODOS LOS PERMISOS
revoke all on *.* from coderhouse@localhost;

#QUITAR UN PERMISO DETERMINADO
revoke update on *.* from coderhouse@localhost;
SHOW GRANTS FOR coderhouse@localhost;