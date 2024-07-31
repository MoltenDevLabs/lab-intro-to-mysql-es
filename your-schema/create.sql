USE lab_mysql;
CREATE TABLE Coches (
  ID INT PRIMARY KEY,
  VIN VARCHAR(20) NOT NULL,
  Fabricante VARCHAR(50),
  Modelo VARCHAR(50),
  Año INT,
  Color VARCHAR(20)
);
CREATE TABLE Clientes (
  ID INT PRIMARY KEY,
  ID_de_Cliente INT NOT NULL,
  Nombre VARCHAR(100),
  Teléfono VARCHAR(20),
  Correo VARCHAR(100),
  Dirección VARCHAR(255),
  Ciudad VARCHAR(50),
  Estado_Provincia VARCHAR(50),
  País VARCHAR(50),
  Postal VARCHAR(10)
);
CREATE TABLE Vendedores (
  ID INT PRIMARY KEY,
  ID_de_Personal INT NOT NULL,
  Nombre VARCHAR(100),
  Tienda VARCHAR(100)
);
CREATE TABLE Facturas (
  ID INT PRIMARY KEY,
  Número_de_Factura VARCHAR(20) NOT NULL,
  Fecha DATE,
  Coche INT,
  Cliente INT,
  Vendedor INT,
  FOREIGN KEY (Coche) REFERENCES Coches(ID),
  FOREIGN KEY (Cliente) REFERENCES Clientes(ID),
  FOREIGN KEY (Vendedor) REFERENCES Vendedores(ID)
);