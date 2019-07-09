CREATE DATABASE GoodBeer;
USE GoodBeer;

CREATE TABLE Fecha(
    cod_fecha INT NOT NULL PRIMARY KEY, 
    descripcion VARCHAR(50)
);

CREATE TABLE Sabor(
    cod_sabor INT NOT NULL PRIMARY KEY, 
    tipo varchar(50),
    descripcion VARCHAR(50)
);

CREATE TABLE negocio(
    cod_negocio INT NOT NULL PRIMARY KEY, 
    rut INT, 
    nombre VARCHAR(50),
    direccion VARCHAR(100),
    telefono INT
);

CREATE TABLE Caducidad(
    cod_caducidad INT NOT NULL PRIMARY KEY, 
    fecha VARCHAR(50), 
    descripcion VARCHAR(100)
);

CREATE TABLE Empleado(
    cod_empleado INT NOT NULL PRIMARY KEY, 
    rut INT, 
    nombre VARCHAR(50),
    direccion VARCHAR(100),
    telefono INT,
    horario_entrada VARCHAR(20),
    horario_salida VARCHAR(20)
);

CREATE TABLE Tiempofabricacion(
    cod_tiempofabricacion INT NOT NULL PRIMARY KEY, 
    duracion VARCHAR(100), 
    descripcion VARCHAR(100)
);

CREATE TABLE Cerveza(
    cod_cerveza INT NOT NULL PRIMARY KEY,
    nombre VARCHAR(50), 
    precio INT, 
    sabor_cod INT,
    FOREIGN KEY (sabor_cod)
        REFERENCES Sabor(cod_sabor)
        ON DELETE CASCADE,
    caducidad_cod INT,
    FOREIGN KEY (caducidad_cod)
        REFERENCES Caducidad(cod_caducidad)
        ON DELETE CASCADE
);


CREATE TABLE Sedistribuye(
    cod_sedistribuye INT NOT NULL PRIMARY KEY, 
    descripcion VARCHAR(100),
    valor_caja INT, 
    cerveza_cod INT,
    FOREIGN KEY (cerveza_cod)
        REFERENCES Cerveza(cod_cerveza)
        ON DELETE CASCADE,
    negocio_cod INT,
    FOREIGN KEY(negocio_cod)
        REFERENCES negocio(cod_negocio)
        ON DELETE CASCADE,
    fecha_cod INT,
    FOREIGN KEY (fecha_cod)
        REFERENCES Fecha(cod_fecha)
        ON DELETE CASCADE
);

CREATE TABLE MateriaPrima(
    cod_materiaprima INT NOT NULL PRIMARY KEY, 
    nombre VARCHAR(100), 
    tipo VARCHAR(50), 
    descripcion VARCHAR(100),
    precio INT,
    num_caducidad INT,
    FOREIGN KEY (num_caducidad)
        REFERENCES Caducidad(cod_caducidad)
        ON DELETE CASCADE
);



CREATE TABLE Compone(
    cod_compone INT NOT NULL PRIMARY KEY,
    cantidad_mp INT, 
    descripcion VARCHAR(100),
    dig_cerveza INT,
    FOREIGN KEY (dig_cerveza)
        REFERENCES Cerveza(cod_cerveza)
        ON DELETE CASCADE,
    num_materiaprima INT,
    FOREIGN KEY (num_materiaprima)
        REFERENCES MateriaPrima(cod_materiaprima)
        ON DELETE CASCADE
);


CREATE TABLE Proveedor(
    cod_proveedor INT NOT NULL PRIMARY KEY, 
    nombre VARCHAR(100),
    rut INT, 
    direccion VARCHAR(100), 
    cantidad INT,
    telefono INT, 
    materiaprima_cod INT,
    FOREIGN KEY (materiaprima_cod)
        REFERENCES MateriaPrima(cod_materiaprima)
        ON DELETE CASCADE,
    precio INT

);


CREATE TABLE Crea(
    cod_crea INT NOT NULL PRIMARY KEY, 
    descripcion VARCHAR(100), 
    num_cerveza INT,
    FOREIGN KEY (num_cerveza)
        REFERENCES Cerveza(cod_cerveza)
        ON DELETE CASCADE,
    empleado_cod INT,
    FOREIGN KEY (empleado_cod)
        REFERENCES Empleado(cod_empleado)
        ON DELETE CASCADE,
    tiempofabricacion_cod INT,
    FOREIGN KEY (tiempofabricacion_cod)
        REFERENCES Tiempofabricacion(cod_tiempofabricacion)
        ON DELETE CASCADE
);
