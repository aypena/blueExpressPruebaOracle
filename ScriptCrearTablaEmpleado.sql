
-- ********** INICIO Paso 1: se debe ejecutar el codigo a continuacion para la creacion de la tabla empleado.



CREATE TABLE Empleado (
  ID NUMBER GENERATED ALWAYS AS IDENTITY,
  Nombre VARCHAR2(50),
  Apellido VARCHAR2(50),
  Salario NUMBER,
  Departamento VARCHAR2(50),
  CONSTRAINT pk_empleado PRIMARY KEY (ID)
);
commit;


-- ********** FIN  Paso 1