CREATE DATABASE GestionTurnos;

GO

USE GestionTurnos;

GO

CREATE TABLE Cliente (
    Id_Cliente INT PRIMARY KEY IDENTITY,
    Nombre NVARCHAR(30),
    Apellido NVARCHAR(20),
    Dni NVARCHAR(8),
    Telefono NVARCHAR(10)
);

GO

CREATE TABLE Turno (
    Id_Turno INT PRIMARY KEY IDENTITY,
    Id_Cliente INT,
    Tipo_Turno NVARCHAR(30),
    Motivo NVARCHAR(40),
    Fecha DATE,
    Horario TIME,
    Estado BIT,
    FOREIGN KEY (Id_Cliente) REFERENCES Cliente(Id_Cliente)
);

GO
