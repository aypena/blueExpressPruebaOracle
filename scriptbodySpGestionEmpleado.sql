-- ****** Inicio PASO 3  : se debe ejecutar el  codigo a continuacion para la creracion del body Y Sus procedimientos.
--                         Este bloque tiene 2 procesos, uno que inserta registros a la tabla empleado (PrcCrearEmpleado) y otro proceso que actualiza el saliario (ActualizarSalarioPrc).

CREATE OR REPLACE
PACKAGE BODY GESTIONEMPLEADOS AS

  PROCEDURE PrcCrearEmpleado(
    p_Nombre IN VARCHAR2,
    p_Apellido IN VARCHAR2,
    p_Salario IN NUMBER,
    p_Departamento IN VARCHAR2
  ) AS
  BEGIN
    -- inserta los datos en la tabla empleado.
    INSERT INTO Empleado (Nombre, Apellido, Salario, Departamento)
    VALUES (p_Nombre, p_Apellido, p_Salario, p_Departamento);
    
  END PrcCrearEmpleado;
  
  

  PROCEDURE ActualizarSalarioPrc(
    p_IDEmpleado IN NUMBER,
    p_NuevoSalario IN NUMBER
  ) AS
  BEGIN
    
    -- Actualizar salario de un empleado existente
    UPDATE Empleado
             SET Salario = p_NuevoSalario
    WHERE ID = p_IDEmpleado;
  END ActualizarSalarioPrc;

END GESTIONEMPLEADOS;
commit;


-- ****** FIN PASO 3   para la creracion del body Y Su procedimiento
