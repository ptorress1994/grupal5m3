
/*creacion de tabla usuario*/
Create table usuarios(
id_usuario int not null auto_increment,
 nombre varchar (20), 
 apellido varchar (20),
 contraseña varchar (20), 
 zona_horaria varchar (20) not null default 'utc-3', 
 genero varchar (20), 
 telefono varchar (20),
  PRIMARY KEY (id_usuario)
 );
 
 /* creacion de tabla fecha*/
create table fecha_ingr(
id_ingreso int not null auto_increment primary key,
id_usuario int not null,
fecha_hora timestamp not null default current_timestamp,
foreign key (id_usuario) references usuarios(id_usuario));


/*para realizar el cambio de zona horaria */
SET time_zone = '-03:00';


/*creacion de registros */

INSERT INTO usuarios (nombre, apellido, contraseña, genero, telefono)
VALUES ('Ana', 'Lopez', 'pass1', 'Femenino', '1112222');
INSERT INTO fecha_ingr (id_usuario) VALUES (last_insert_id());

INSERT INTO usuarios (nombre, apellido, contraseña, genero, telefono)
VALUES ('Juan', 'Gonzalez', 'pass2', 'Masculino', '2223333');
INSERT INTO fecha_ingr (id_usuario) VALUES (last_insert_id());

INSERT INTO usuarios (nombre, apellido, contraseña, genero, telefono)
VALUES ('Maria', 'Fernandez', 'pass3', 'Femenino', '3334444');
INSERT INTO fecha_ingr (id_usuario) VALUES (last_insert_id());

INSERT INTO usuarios (nombre, apellido, contraseña, genero, telefono)
VALUES ('Pedro', 'Rodriguez', 'pass4', 'Masculino', '4445555');
INSERT INTO fecha_ingr (id_usuario) VALUES (last_insert_id());

INSERT INTO usuarios (nombre, apellido, contraseña, genero, telefono)
VALUES ('Laura', 'Garcia', 'pass5', 'Femenino', '5556666');
INSERT INTO fecha_ingr (id_usuario) VALUES (last_insert_id());

INSERT INTO usuarios (nombre, apellido, contraseña, genero, telefono)
VALUES ('Roberto', 'Sanchez', 'pass6', 'Masculino', '6667777');
INSERT INTO fecha_ingr (id_usuario) VALUES (last_insert_id());

INSERT INTO usuarios (nombre, apellido, contraseña, genero, telefono)
VALUES ('Gabriela', 'Perez', 'pass7', 'Femenino', '7778888');
INSERT INTO fecha_ingr (id_usuario) VALUES (last_insert_id());

INSERT INTO usuarios (nombre, apellido, contraseña, genero, telefono)
VALUES ('Carlos', 'Martinez', 'pass8', 'Masculino', '8889999');
INSERT INTO fecha_ingr (id_usuario) VALUES (last_insert_id());

/*creacion de tabla contacto*/

create table  Contactos (
id_contacto  int not null auto_increment primary key,
id_usuario int not null, 
telefono varchar(20),
correo_electronico varchar(30),
foreign key (id_usuario) references usuarios(id_usuario)
);

/*modificacion de telefono en tabla contacto*/

ALTER TABLE usuarios ADD CONSTRAINT telefono UNIQUE (telefono);
CREATE INDEX idx_usuarios_telefono ON usuarios (telefono);
ALTER TABLE Contactos ADD CONSTRAINT fk_contactos_usuarios FOREIGN KEY (telefono) REFERENCES usuarios(telefono);
