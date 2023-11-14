
-- ****** Inicio PASO 2  : se debe ejecutar el codigo a continuacion  para la creracion del Package

CREATE OR REPLACE PACKAGE GestionEmpleados AS
  PROCEDURE PrcCrearEmpleado(
    p_Nombre IN VARCHAR2,
    p_Apellido IN VARCHAR2,
    p_Salario IN NUMBER,
    p_Departamento IN VARCHAR2
  );

  PROCEDURE ActualizarSalarioPrc(
    p_IDEmpleado IN NUMBER,
    p_NuevoSalario IN NUMBER
  );
END GestionEmpleados;

commit;


-- ****** FIN PASO 2   para la creracion de el Package
--------------
