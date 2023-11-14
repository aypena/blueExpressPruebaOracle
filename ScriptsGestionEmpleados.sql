--  Este script prueba la funcionalidad del paquete GestionEmpleados.


-----**  INICIO PASO 4: se debe ejecutar el codigo a continuacion para hacer un llamado
--                     al procedimiento Y crear un nuevo empleado

BEGIN
  GestionEmpleados.PrcCrearEmpleado('Alexis', 'marcano', 10000, 'Informatica');
  GestionEmpleados.PrcCrearEmpleado('Vanessa', 'Gallegos', 15000, 'RRHH');
END;
commit;


-----**  FIN PASO 4


-- Con esta consulta podemos validar el corecto funcionamiento del procedimiento ejecutado en el paso 4. debe sombrearla y ejecutarla.

SELECT * FROM Empleado;




-----**  INICIO PASO 5: se debe ejecutar el codigo a continuacion para hacer un llamado
--                      al procedimiento Y actualizar el sueldo de los trabajadores. un nuevo empleado

-- Llamar al procedimiento para actualizar el salario de un empleado
BEGIN
  GestionEmpleados.ActualizarSalarioPrc(1, 20000);
   GestionEmpleados.ActualizarSalarioPrc(2, 30000);
END;
commit;

-----**  FIN PASO 5

-- Con esta consulta podemos validar el corecto funcionamiento del procedimiento ejecutado en el paso 4. debe sombrearla y ejecutarla.
SELECT * FROM Empleado;


