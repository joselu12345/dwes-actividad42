DROP DATABASE IF EXISTS tienda;

CREATE DATABASE tienda;
USE tienda;


CREATE TABLE productos (
    id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(200) NOT NULL,
    descripcion VARCHAR(200),
    precio DECIMAL(10,2),
    createdAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updatedAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

-- ALTER TABLE productos ADD COLUMN imagen VARCHAR(200) AFTER descripcion;

INSERT INTO productos (nombre, descripcion, precio) 
VALUES 
  ('Monitor 17 pulgadas', 'Monitor plano LCD', 110.22),
  ('Teclado', 'Teclado USB en español', 20.12),
  ('Impresora', 'Impresora láser a color', 360.05);




  CREATE DATABASE tienda;
USE tienda;


CREATE TABLE clientes (
    id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(200) NOT NULL,
    domicilio VARCHAR(200),
    fecha_nacimiento DATE,
    createdAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updatedAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

-- ALTER TABLE productos ADD COLUMN imagen VARCHAR(200) AFTER descripcion;

INSERT INTO clientes (nombre, domicilio, fecha_nacimiento) 
VALUES 
  ('José', 'C/ Los Naranjos 5, Montilla', '2000-01-01'),
  ('Marta', 'Av/ la Constitución 67, Priego','1990-02-02'),
  ('Lucia', 'Av/ de América 27, Córdoba','1980-03-03');
