SELECT
    *
FROM
    departments;

SELECT
    *
FROM
    employees;

--Bloques anonimos

SET SERVEROUTPUT ON

BEGIN
    dbms_output.put_line(100);
    dbms_output.put_line('Hola mi nombre es yonatan montes ' || 'Ingeniero de sistemas');
END;

--variables en pl/sql

SET SERVEROUTPUT ON

DECLARE
    salary  NUMBER(5) := 1000;
    mane    VARCHAR2(100) := 'Yonatan Montes';
BEGIN
    dbms_output.put_line(salary);
    dbms_output.put_line(mane);
END;

SET SERVEROUTPUT ON

DECLARE
    name        VARCHAR2(100);
    last_name   VARCHAR2(100);
    birth_date  DATE;
BEGIN
    name := 'YONATAN';
    last_name := 'MONTES';
    birth_date := TO_DATE('01/01/2017', 'dd/mm/yyyy');
    dbms_output.put_line(name);
    dbms_output.put_line(last_name);
    dbms_output.put_line(birth_date);
    dbms_output.put_line(name || ' ARIAS');
END;

--CONSTANTES

SET SERVEROUTPUT ON

DECLARE
    x  CONSTANT NUMBER := 10;
    z  NUMBER NOT NULL := 20;
BEGIN
    z := 30;
    dbms_output.put_line(x);
    dbms_output.put_line(z);
END;


--PRACTICA 1:
--Realizar los siguientes ejercicios.

--1. Visualizar el nombre y apellidos.

SET SERVEROUTPUT ON

DECLARE
    nombre    VARCHAR2(100);
    apellido  VARCHAR2(200);
BEGIN
    nombre := 'YONATAN';
    apellido := 'MONTES';
    dbms_output.put_line(nombre);
    dbms_output.put_line(apellido);
    dbms_output.put_line(nombre
                         || ' '
                         || apellido);
END;

SET SERVEROUTPUT ON

DECLARE
    variable1  NUMBER := 10;
    variable2  NUMBER := 10;
    x          CONSTANT NUMBER := 2;
BEGIN
    dbms_output.put_line(variable1 + variable2 + x);
END;

SET SERVEROUTPUT ON

DECLARE
    nombre            VARCHAR2(100) := 'YOANI YONATAN MONTES ARIAS';
    edad              NUMBER := 28;
    fecha_nacimiento  DATE := to_date('12/02/1993');
BEGIN
    dbms_output.put_line(nombre);
    dbms_output.put_line(edad);
    dbms_output.put_line(fecha_nacimiento);
    dbms_output.put_line(nombre
                         || ' '
                         || edad
                         || ' '
                         || fecha_nacimiento);

END;

SET SERVEROUTPUT ON

BEGIN
    dbms_output.put_line('APASOFT');
    dbms_output.put_line('TRAINING');
    dbms_output.put_line('APASOFT'
                         || ' '
                         || 'TRAINING');
END;
/

/*2.Determinar que bloques PL/SQL son correctos. 
    La solución es el 4, ya que es el único que tiene todos los componentes. Un bloque BEGIn END debe tener al menos un comando*/
    
--3-Crear dos variables de tipo numérico y visualizar su suma
DECLARE
    a          NUMBER;
    b          NUMBER;
    resultado  NUMBER;
BEGIN
    a := 10;
    b := 20;
    resultado := a + b;
    dbms_output.put_line('RESULTADO:' || resultado);
END;
/

--4-Modificar el ejemplo anterior y ponemos null como valor de una de las variables. ¿Qué resultado arroja? Volvemos a ponerla un valor numérico
--Arroja NULL, es decir no se ve nada en este caso. Cualquier operación con un NULL devuelve NULL
DECLARE
    a          NUMBER;
    b          NUMBER;
    resultado  NUMBER;
BEGIN
    a := 10;
    b := NULL;
    resultado := a + b;
    dbms_output.put_line('RESULTADO:' || resultado);
END;
/

--5-Añadir una constante al ejercicio. Sumamos las 2 variables y la constantes. Intentar modificar la constante. ¿Es posible?
-- SI INTENTAMOS CAMBIAR UNA CONSTANTE DEBE ARROJAR UN ERROR. PROBAR INTENTANDO CAMBIAR LA VARIABLE C EN ESTE CASO
DECLARE
    a          NUMBER;
    b          NUMBER;
    c          CONSTANT NUMBER := 40;
    resultado  NUMBER;
BEGIN
    a := 10;
    b := 20;
    resultado := a + b + c;
    dbms_output.put_line('RESULTADO:' || resultado);
END;
/


--6-Crear un bloque anónimo que tenga una variable de tipo VARCHAR2 con nuestro nombre, otra numérica con la edad y una tercera con la fecha de nacimiento.
-- Visualizarlas por separado y luego intentar concatenarlas. ¿es posible?
DECLARE
    nombre     VARCHAR(50) := 'APASOFT';
    edad       NUMBER := 45;
    fecha_nac  DATE := '16-06-1975';
BEGIN
    dbms_output.put_line(nombre
                         || ' '
                         || edad
                         || ' '
                         || fecha_nac);
END;

--VARIABLES BOOLEANAS

DECLARE
    b1 BOOLEAN;
BEGIN
    b1 := true;
    b1 := false;
    b1 := NULL;
END;

--%TYPE

SET SERVEROUTPUT ON

DECLARE
    x      NUMBER;
    z      x%TYPE;
    emple  employees.salary%TYPE;
BEGIN
    emple := 100;
END;

--OPERADORES * - / + ** ||


SET SERVEROUTPUT ON

DECLARE
    x  NUMBER := 5;
    z  NUMBER := 10;
    a  VARCHAR2(100) := 'EXAMPLE';
    d  DATE := '10-01-1990';
BEGIN
    dbms_output.put_line(x + 10);
    dbms_output.put_line(x * z);
    dbms_output.put_line(sysdate);
    dbms_output.put_line(d + 1);
END;

DECLARE
    x NUMBER;

--COMENTARIOS 

    /*
    ESTAS EN LINEAS TODO ES COMENTARIO
    
    */
BEGIN
    x := 10;
END;

 

--PRACTICA

/*
QUEREMOS CALCULAR EL IMPUESTO DE UN PRODUCTO
EL IMPUESTO DEL 21% LO PONEMOS EN UNA CONSTANTE
cREAMOS UNA VARIABLE DE TIPO NUMBER (5,2) PARA PONER EL PRECIO DEL PRODUCTO
CREAMOS OTRA VARIABLE PARA EL RESULTADO. LE DECIMOS QUE ES DEL MISMO TIPO (TYPE)
QUE LA ANTERIOR
HACEMOS EL CÁLCULO Y VISUALIZAMOS EL RESULTADO.

*/

SET SERVEROUTPUT ON

DECLARE
    impuesto   CONSTANT NUMBER := 21;
    precio     NUMBER(5, 2);
    resultado  precio%TYPE;
BEGIN
    precio := 100.50;
    resultado := precio * impuesto / 100;
    dbms_output.put_line(resultado);
END;

--BLOQUES ANIDADOS

SET SERVEROUTPUT ON

BEGIN
    dbms_output.put_line('EN EL PRIMER BLOQUE');
    DECLARE
        x NUMBER := 10;
    BEGIN
        dbms_output.put_line(x);
    END;
END;


--ANBITO DE VARIABLES EN BLOQUES ANIDADOS

SET SERVEROUTPUT ON

DECLARE

    X NUMBER:=20;
    Z NUMBER:=30;
    
BEGIN

    DECLARE
        X NUMBER:=10;
        Z NUMBER:=100;
        Y NUMBER:=200;
    BEGIN
        DBMS_OUTPUT.PUT_LINE('X:=' || X);
        DBMS_OUTPUT.PUT_LINE('Z:=' || Z);
    END;

END;


--PRACTICA AMBITO DE VARIABLES/BLOQUES ANIDADOS

SET SERVEROUTPUT ON

DECLARE
    X NUMBER:=10;
BEGIN
    DBMS_OUTPUT.PUT_LINE(X);
    DECLARE
        X NUMBER:=20;
    BEGIN
        DBMS_OUTPUT.PUT_LINE(X);
    END;
    DBMS_OUTPUT.PUT_LINE(X);
END;


--FUNCIONES EN PL/SQL

SET SERVEROUTPUT ON

DECLARE
    X VARCHAR2(50);
    MAYUS VARCHAR2(100);
    FECHA DATE;
    Z NUMBER:=109.80;
    
BEGIN
    
    X:='Ejemplo';
    DBMS_OUTPUT.PUT_LINE(SUBSTR(X,1,3));
    MAYUS:= UPPER(X);
    DBMS_OUTPUT.PUT_LINE(MAYUS);
    FECHA:=SYSDATE;
    DBMS_OUTPUT.PUT_LINE(FECHA);
    DBMS_OUTPUT.PUT_LINE(FLOOR(Z));

END;

--PRACTICAS FUNCIONES PL/SQL

SET SERVEROUTPUT ON

DECLARE
    NOMBRE VARCHAR2(100);
    APELLIDO1 VARCHAR2(100);
    APELLIDO2 VARCHAR2(100);
BEGIN
    NOMBRE:='yonatan';
    APELLIDO1:='montes';
    APELLIDO2:='arias';
    
    DBMS_OUTPUT.PUT_LINE(UPPER(SUBSTR(NOMBRE,1,1))||'.'|| UPPER(SUBSTR(APELLIDO1,1,1))||'.'||UPPER(SUBSTR(APELLIDO2,1,1)));

END;


SET SERVEROUTPUT ON

DECLARE
    MYBIRTHDAY DATE:='12-02-1993';
    
BEGIN

    DBMS_OUTPUT.PUT_LINE(TO_CHAR( MYBIRTHDAY, 'month'));
 
END;


/*Operadores relacionales o de operacion

    = igual a
    <> distinto de
    < menor que
    > mayor que
    >= mayor o igual a
    <= menor o igual a
    
    Operadores logicos
    
    AND y logico
    NOT negacion
    OR o logico
    
*/


    
--Comando IF


SET SERVEROUTPUT ON

DECLARE
    X NUMBER :=20;
BEGIN
    
    IF
        X=10
    THEN
        DBMS_OUTPUT.PUT_LINE('X:=10');
    ELSE
        DBMS_OUTPUT.PUT_LINE('X=:OTHER VALUE');
    END IF; 

END;


SET SERVEROUTPUT ON

DECLARE
    sales number:=20000;
    bonus number:=0;
BEGIN
    
    IF sales >50000 THEN
        bonus:=1500;
    ELSIF sales >35000 THEN
        bonus:=500;
    ELSIF sales>2000 THEN
        bonus:=150;
    ELSE
        bonus:=100;
    END IF;
    
    DBMS_OUTPUT.PUT_LINE('Sales = ' || sales || 'bonus= ' || bonus);

END;


--Practica comando IF

SET SERVEROUTPUT ON

DECLARE

    x number :=9;
BEGIN

    IF MOD(x,2) = 0 THEN
        DBMS_OUTPUT.PUT_LINE('ES PAR');
    ELSE 
        DBMS_OUTPUT.PUT_LINE('NO ES PAR');
    END IF;

END;

SET SERVEROUTPUT ON

DECLARE

    X CHAR(1):='A';

BEGIN

    IF X='A' THEN
        DBMS_OUTPUT.PUT_LINE('ELECTRONICA');
    ELSIF X='B' THEN
        DBMS_OUTPUT.PUT_LINE('INFORMATICA');
    ELSIF X='C' THEN
        DBMS_OUTPUT.PUT_LINE('ROPA');
    ELSIF X='D' THEN
        DBMS_OUTPUT.PUT_LINE('MUSICA');
    ELSIF X='E' THEN
        DBMS_OUTPUT.PUT_LINE('LIBROS');
    ELSE 
        DBMS_OUTPUT.PUT_LINE('OTHERS');
    END IF;
    
END;

--Comando0 CASE

SET SERVEROUTPUT ON

DECLARE
    v1 char(1);
BEGIN
    v1:='B';    
    CASE v1
        WHEN 'A' THEN DBMS_OUTPUT.PUT_LINE('Excellent');
        WHEN 'B' THEN DBMS_OUTPUT.PUT_LINE('Very Good');
        WHEN 'C' THEN DBMS_OUTPUT.PUT_LINE('Good');
        WHEN 'D' THEN DBMS_OUTPUT.PUT_LINE('Fair');
        WHEN 'E' THEN DBMS_OUTPUT.PUT_LINE('Poor');
        ELSE DBMS_OUTPUT.PUT_LINE('No such value');
    END CASE;
END;

--SEARCHED CASE

SET SERVEROUTPUT ON

DECLARE
    bonus number;
BEGIN
    bonus:=600;
    CASE
    WHEN bonus >500 THEN DBMS_OUTPUT.PUT_LINE('Excellent');
    WHEN bonus <=500 AND bonus > 250 THEN DBMS_OUTPUT.PUT_LINE('Very Good');
    WHEN bonus <=250 AND bonus > 100 THEN DBMS_OUTPUT.PUT_LINE('Good');
    ELSE DBMS_OUTPUT.PUT_LINE('POOR!!!');
    END CASE;

END;


SET SERVEROUTPUT ON

DECLARE
    usuario varchar2(40);
BEGIN
    usuario:=user;
    
    CASE usuario
        WHEN 'SYS' THEN DBMS_OUTPUT.PUT_LINE('ERES SUPER ADMINISTRADOR');
        WHEN 'SYSTEM' THEN DBMS_OUTPUT.PUT_LINE('ERES UN ADMINISTRADOR NORMAL');
        WHEN 'HR' THEN DBMS_OUTPUT.PUT_LINE('ERES DE RECURSOS HUMANOS');
        ELSE DBMS_OUTPUT.PUT_LINE('USUARIO NO AUTORIZADO');
    END CASE;

END;


--BUCLE LOOP

SET SERVEROUTPUT ON;
DECLARE
    X NUMBER:=1;
BEGIN
    LOOP
        DBMS_OUTPUT.PUT_LINE(X);
        X:=X+1;
        EXIT WHEN X=11;
    END LOOP;
END;

--Loop anidados

SET SERVEROUTPUT ON
DECLARE
    s PLS_INTEGER:=0;
    i PLS_INTEGER:=0;
    j PLS_INTEGER;

BEGIN
    <<parent>>
    
    LOOP
    
        --print parent
        
        i:=i+1;
        j:=100;
        
        DBMS_OUTPUT.PUT_LINE('Parent: ' || i);
        
        <<child>>
        LOOP
        
            --print child
            
            EXIT parent WHEN (i>3);
            DBMS_OUTPUT.PUT_LINE('Child: ' || j);
            j:=j+1;
            EXIT child WHEN (j>105);
        
        END LOOP child;
    
    END LOOP parent;
    
    DBMS_OUTPUT.PUT_LINE('FINISH!!!');

END;
    
--Comando continue

SET SERVEROUTPUT ON

DECLARE 
    X NUMBER:=0;
BEGIN
    
    LOOP 
    
        DBMS_OUTPUT.PUT_LINE('LOOP: X = ' || X);
        X:=X+1;
        
        /*
        IF X<3 THEN
            CONTINUE;
        END IF;
        
        */
        
        CONTINUE WHEN X<3;
        
        DBMS_OUTPUT.PUT_LINE('DESPUES DE CONTINUE: X= ' || X);
        
        EXIT WHEN X=5;
    
    END LOOP;
    
    DBMS_OUTPUT.PUT_LINE('DESPUES DEL LOOP: X= ' || X);

END;

--Comando FOR

SET SERVEROUTPUT ON

BEGIN

    FOR I IN 5..15 LOOP 
        DBMS_OUTPUT.PUT_LINE(i);
    END LOOP;

END;

SET SERVEROUTPUT ON

BEGIN

    FOR I IN REVERSE 5..15 LOOP 
        DBMS_OUTPUT.PUT_LINE(i);
    EXIT WHEN I=10;
    END LOOP;

END;

--Comando while

SET SERVEROUTPUT ON

DECLARE 
    done BOOLEAN:=false;
    x number:=0;
BEGIN

    WHILE x<10 LOOP
        DBMS_OUTPUT.PUT_LINE(X);
        X:=X+1;
        EXIT WHEN X=5;
    END LOOP;
    
    WHILE done LOOP
        DBMS_OUTPUT.PUT_LINE('No imprimas esto');
        done:=true;
    END LOOP;
    
    WHILE NOT done LOOP
    
        DBMS_OUTPUT.PUT_LINE('He pasado por aqui');
        done:=true;
    
    END LOOP;
    
END;


--PRACTICA DE BUCLES

--PRACTICA 1 - TABLAS DE MULTIPLICAR

SET SERVEROUTPUT ON

DECLARE
    X NUMBER;
    Z NUMBER;
BEGIN
    X:=1;
    Z:=1;
    
    LOOP
        EXIT WHEN X=11;
        DBMS_OUTPUT.PUT_LINE('Tabla de multiplicar del: '|| x);  
        LOOP
            EXIT WHEN Z=11;
            DBMS_OUTPUT.PUT_LINE(X*Z);
            Z:=Z+1;
        END LOOP;        
        Z:=1;
        X:=X+1;    
    END LOOP;    
END;


SET SERVEROUTPUT ON

DECLARE
    X NUMBER:=0;
    Z NUMBER:=0;
    

BEGIN
    X:=1;
    Z:=1;
    
    WHILE X<11 LOOP
    
        DBMS_OUTPUT.PUT_LINE('Tabla del multiplicar del: ' || x);
        
        WHILE Z<11 LOOP
            
            DBMS_OUTPUT.PUT_LINE(X*Z);
            Z:=Z+1;
            
        END LOOP;
    
        Z:=1;
        X:=X+1;
        
    END LOOP;


END;

SET SERVEROUTPUT ON

BEGIN

    FOR X IN 1..10 LOOP    
        DBMS_OUTPUT.PUT_LINE('Tabla de multiplicar del: '|| x);        
        FOR Z IN 1..10 LOOP        
            DBMS_OUTPUT.PUT_LINE(X*Z);        
        END LOOP;    
    END LOOP;

END;

--PRACTICA2 FRASE AL REVES

SET SERVEROUTPUT ON

DECLARE
    FRASE VARCHAR2(100);
    LIMITE NUMBER;
    FRASE_REVES VARCHAR2(100);

BEGIN

    FRASE:='ESTO ES UNA PRUEBA DE FRASE';
    LIMITE:= LENGTH(FRASE);
    
    WHILE LIMITE >0 LOOP
    
        FRASE_REVES:=FRASE_REVES || SUBSTR(FRASE,LIMITE,1);
        LIMITE:=LIMITE-1;
    
    END LOOP;
    
    DBMS_OUTPUT.PUT_LINE(FRASE_REVES);


END;

--PRACTICA 3. SALIR SI HAY UNA X

SET SERVEROUTPUT ON

DECLARE
    FRASE VARCHAR2(100);
    LIMITE NUMBER;
    FRASE_REVES VARCHAR2(100);
BEGIN
    FRASE:= 'ESTO ES UNA PRUEBA DE XRTO';
    LIMITE:= LENGTH(FRASE);
    
    
    WHILE LIMITE>0 LOOP
    
        EXIT WHEN UPPER(SUBSTR(FRASE,LIMITE,1))='X';
        FRASE_REVES:= FRASE_REVES || SUBSTR(FRASE,LIMITE,1);
        LIMITE:=LIMITE-1;    
    END LOOP;
        DBMS_OUTPUT.PUT_LINE(frase_reves);
END;


SET SERVEROUTPUT ON

DECLARE

    NOMBRE VARCHAR2(100);
    CANTIDAD NUMBER;
    ASTERISCOS VARCHAR2(100);

BEGIN

    NOMBRE:='Yonatan MONTES';
    CANTIDAD:= LENGTH(NOMBRE);
    FOR I IN 1..CANTIDAD LOOP
    
        ASTERISCOS:= ASTERISCOS || '*';
    
    END LOOP;

DBMS_OUTPUT.PUT_LINE(ASTERISCOS);

END;

SET SERVEROUTPUT ON

DECLARE
    INICIO NUMBER;
    FIN NUMBER;
BEGIN
    INICIO:=1;
    FIN:=20;
    
    FOR I IN INICIO..FIN LOOP
    
    IF MOD(I,4)=0 THEN
        DBMS_OUTPUT.PUT_LINE(I);
    END IF;
    
    END LOOP;

END;


--SELECT EN PLSQL;

SET SERVEROUTPUT ON
DECLARE
    SALARIO NUMBER;
    NOMBRE EMPLOYEES.FIRST_NAME%TYPE;
    EMPLEADO EMPLOYEES%ROWTYPE;
BEGIN
    --SOLO PUEDE DEVOLVER UNA FILA
    SELECT SALARY, FIRST_NAME INTO SALARIO, NOMBRE FROM EMPLOYEES WHERE EMPLOYEE_ID=100;
    SELECT * INTO EMPLEADO FROM EMPLOYEES WHERE EMPLOYEE_ID=100;
    DBMS_OUTPUT.PUT_LINE(SALARIO || ' ' || NOMBRE);
    
    DBMS_OUTPUT.PUT_LINE(EMPLEADO.FIRST_NAME);
    DBMS_OUTPUT.PUT_LINE(EMPLEADO.SALARY);

END;

--%ROWTYPE


SET SERVEROUTPUT ON

DECLARE

    SALARIO_MAXIMO NUMBER;
    TIPO_TRABAJO VARCHAR2(100);

BEGIN

    SELECT MAX(SALARY) INTO SALARIO_MAXIMO FROM EMPLOYEES WHERE DEPARTMENT_ID =100;
    DBMS_OUTPUT.PUT_LINE(SALARIO_MAXIMO);
    
    SELECT j.job_title INTO TIPO_TRABAJO FROM EMPLOYEES E INNER JOIN JOBS J ON J.JOB_ID = E.JOB_ID WHERE e.employee_id=100;
    DBMS_OUTPUT.PUT_LINE(TIPO_TRABAJO);

END;

SET SERVEROUTPUT ON

DECLARE

    NUM_DEPARTAMENTO EMPLOYEES.DEPARTMENT_ID%TYPE;
    NOMBRE_DEPARTAMENTO DEPARTMENTS.DEPARTMENT_NAME%TYPE;
    NUM_EMP NUMBER;

BEGIN

    NUM_DEPARTAMENTO:=100;
    
    SELECT DEPARTMENT_NAME INTO NOMBRE_DEPARTAMENTO FROM DEPARTMENTS WHERE DEPARTMENT_ID=NUM_DEPARTAMENTO;
    DBMS_OUTPUT.PUT_LINE(NOMBRE_DEPARTAMENTO);
    
    SELECT COUNT(*) INTO NUM_EMP FROM EMPLOYEES WHERE DEPARTMENT_ID=NUM_DEPARTAMENTO;
    DBMS_OUTPUT.PUT_LINE(NUM_EMP);


END;


SET SERVEROUTPUT ON

DECLARE

    SALARIO_MAXIMO NUMBER;
    SALARIO_MINIMO NUMBER;
    RESTA NUMBER;

BEGIN

    SELECT MAX(SALARY), MIN(SALARY) INTO SALARIO_MAXIMO, SALARIO_MINIMO FROM EMPLOYEES; 
    RESTA:= SALARIO_MAXIMO - SALARIO_MINIMO;
    
    DBMS_OUTPUT.PUT_LINE('Salario maximo = ' || SALARIO_MAXIMO);
    DBMS_OUTPUT.PUT_LINE('Salario minimo = ' || SALARIO_MINIMO);
    DBMS_OUTPUT.PUT_LINE('Diferencia = ' || RESTA);

END;

--INSERT EN PLSQL

CREATE TABLE TEST(
    
    test_id number not null,
    test_name varchar2(50) not null,
    test_desc varchar2(50) not null,
    CONSTRAINT test_pk PRIMARY KEY (test_id)
);

--INSERT CON PLSQL

DECLARE
    ID TEST.TEST_ID%TYPE;
BEGIN
    ID:=1;
    INSERT INTO TEST VALUES(ID,'PRIMER TEST','DESCRIPCION DEL PRIMER TEST');
    COMMIT;
END;

--UPDATE CON PLSQL


DECLARE
    ID TEST.TEST_ID%TYPE;
BEGIN
    ID:=1;
    UPDATE TEST SET TEST_NAME='PRIMER TEST UPDATE' WHERE TEST_ID=ID;
    COMMIT;
END;


--DELETE CON PLSQLS

DECLARE
    ID TEST.TEST_ID%TYPE;
BEGIN
    ID:=1;
    DELETE FROM TEST WHERE TEST_ID=ID;
    COMMIT;
END;


DECLARE

    MAXIMO NUMBER;

BEGIN

    SELECT MAX(DEPARTMENT_ID) INTO MAXIMO FROM DEPARTMENTS;
    MAXIMO:=MAXIMO+1;    
    INSERT INTO DEPARTMENTS VALUES(MAXIMO,'INFORMATICA',100,1000);
    COMMIT;
   
END;


DECLARE
    ID DEPARTMENTS.DEPARTMENT_ID%TYPE;
BEGIN
    ID:=271;
    UPDATE DEPARTMENTS SET LOCATION_ID=1700 WHERE DEPARTMENT_ID=ID;
    COMMIT;
END;

DECLARE
    ID DEPARTMENTS.DEPARTMENT_ID%TYPE;
BEGIN
    ID:=271;
    DELETE FROM DEPARTMENTS WHERE DEPARTMENT_ID=ID;
    COMMIT;
END;


--EXCEPCIONES

--ORACLE
--USUARIO

SET SERVEROUTPUT ON

DECLARE
    EMPL EMPLOYEES%ROWTYPE;
BEGIN
    SELECT * INTO EMPL FROM EMPLOYEES WHERE EMPLOYEE_ID=1000;
    DBMS_OUTPUT.PUT_LINE(EMPL.FIRST_NAME);
    
EXCEPTION
--NO DATA FOUND
--TOO MANY_ROWS
--ZERO DIVIDE
--DUP_VAL_ON_INDEX
    WHEN NO_DATA_FOUND THEN
        DBMS_OUTPUT.PUT_LINE('ERROR EMPLEADO INEXISTENTE');
    WHEN TOO_MANY_ROWS THEN
        DBMS_OUTPUT.PUT_LINE('ERROR DEMASIADOS EMPLEADOS');
    WHEN OTHERS THEN
        NULL;
END;

--ERRORES NO PREDEFINIDAS

SET SERVEROUTPUT ON

DECLARE
    MI_EXCEP EXCEPTION;
    PRAGMA EXCEPTION_INIT(MI_EXCEP,-937);
    V1 NUMBER;
    V2 NUMBER;
BEGIN
    SELECT EMPLOYEE_ID, SUM(SALARY) INTO V1,V2 FROM EMPLOYEES;
    DBMS_OUTPUT.PUT_LINE(V1);
EXCEPTION
    WHEN MI_EXCEP THEN
        DBMS_OUTPUT.PUT_LINE('FUNCION DE GRUPO INCORRECTA');
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('ERROR, INDIFINIDO');
END;

--SQLCODE Y SQLERRM

CREATE TABLE ERRS(
    
    CODE number not null,
    MESSAGE varchar2(50) not null
);

SET SERVEROUTPUT ON

DECLARE
    EMPL EMPLOYEES%ROWTYPE;
    CODE NUMBER;
    MESSAGE VARCHAR2(100);
BEGIN

    SELECT * INTO EMPL FROM EMPLOYEES;
    DBMS_OUTPUT.PUT_LINE(EMPL.SALARY);
    
EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE(SQLCODE);
        DBMS_OUTPUT.PUT_LINE(SQLERRM);
        CODE:=SQLCODE;
        MESSAGE:=SQLERRM;
        INSERT INTO ERRS VALUES (CODE,MESSAGE);

END;


--PRACTICA CON EXCEPTIONS

/*Crear una SELECT (no un cursor explícito) que devuelva el nombre de un empleado pasándole el EMPLOYEE_ID en el WHERE,  

o Comprobar en primer lugar que funciona pasando un empleado existente
o Pasar un empleado inexistente y comprobar que genera un error
o Crear una zona de EXCEPTION controlando el NO_DATA_FOUND para que pinte un mensaje como “Empleado inexistente”*/

SET SERVEROUTPUT ON

DECLARE
    NOMBRE_EMPLEADO EMPLOYEES.FIRST_NAME%TYPE;
BEGIN
    SELECT FIRST_NAME INTO NOMBRE_EMPLEADO FROM EMPLOYEES
    WHERE EMPLOYEE_ID=1000; --EMPLEADO INEXISTENTE
    DBMS_OUTPUT.PUT_LINE(NOMBRE_EMPLEADO);
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        DBMS_OUTPUT.PUT_LINE('No existe el empleado');
END;

 /*Modificar la SELECT para que devuelva más de un empleado, por ejemplo poniendo EMPLOYEE_ID> 100. Debe generar un error
Controlar la excepción para que genere un mensaje como “Demasiados empleados en la consulta”*/

SET SERVEROUTPUT ON
DECLARE
    NOMBRE_EMPLEADO EMPLOYEES.FIRST_NAME%TYPE;
BEGIN
    SELECT FIRST_NAME INTO NOMBRE_EMPLEADO FROM EMPLOYEES WHERE EMPLOYEE_ID>1;
    DBMS_OUTPUT.PUT_LINE(NOMBRE_EMPLEADO);
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        DBMS_OUTPUT.PUT_LINE('No existe el empleado');
    WHEN TOO_MANY_ROWS THEN
        DBMS_OUTPUT.PUT_LINE('Empleado duplicado');
END;

 /*Modificar la consulta para que devuelva un error de división por CERO, por ejemplo, vamos a devolver el salario en vez del nombre y lo dividimos por 0.
En este caso, en vez de controlar la excepción directamente, creamos una sección WHEN OTHERS y pintamos el error con SQLCODE y SQLERRM*/

SET SERVEROUTPUT ON

DECLARE
    NOMBRE_EMPLEADO EMPLOYEES.FIRST_NAME%TYPE;
    SALARIO NUMBER;
BEGIN
    SELECT SALARY INTO SALARIO FROM EMPLOYEES WHERE EMPLOYEE_ID=100;
    SALARIO:=SALARIO/0;
    DBMS_OUTPUT.PUT_LINE(SALARIO);
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        DBMS_OUTPUT.PUT_LINE('No existe el empleado');
    WHEN TOO_MANY_ROWS THEN
        DBMS_OUTPUT.PUT_LINE('Empleado duplicado');
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('CODIGO: '|| SQLCODE);
        DBMS_OUTPUT.PUT_LINE('MESSAGE: '|| SQLERRM);
END;


/*El error -00001 es clave primaria duplicada. Aunque ya existe una predefinida (DUP_VAL_ON_INDEX) vamos a crear una excepción no -predefinida que haga lo mismo. o Vamos a usar la tabla REGIONS para hacerlo más fácil o Usamos PRAGMA EXCEPTION_INIT y creamos una excepción denominada “duplicado”. Cuando se genere ese error debemos pintar “Clave duplicada, intente otra”. o Insertamos una fila en la tabla REGIONS que esté duplicada y vemos que se controla el error*/

SET SERVEROUTPUT ON

DECLARE
    DUPLICADO EXCEPTION;
    PRAGMA EXCEPTION_INIT(DUPLICADO,-00001);
BEGIN
    INSERT INTO REGIONS VALUES(1,'PRUEBA');
    COMMIT;
EXCEPTION
    WHEN DUPLICADO THEN
        DBMS_OUTPUT.PUT_LINE('REGISTRO DUPOLICADO');
END;



--EXCEPECIONES PERSONALIZADAS POR EL DESARROLLADOR

SET SERVEROUTPUT ON

DECLARE
    reg_max EXCEPTION;
    reg_numero number;
    reg_desc varchar2(200);
BEGIN
    reg_numero:=101;
    reg_desc:='ASIA';
    IF reg_numero > 100 THEN
        RAISE reg_max;
    ELSE
        INSERT INTO REGIONS VALUES (reg_numero,reg_desc);
        commit;
    END IF;
EXCEPTION 
    WHEN reg_max THEN
        DBMS_OUTPUT.PUT_LINE('La region no puede ser insertada solo valores menor o igual a 100');
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Error indifinido');
END;


/*Crear una Excepción personalizada denominada CONTROL_REGIONES.
o Debe dispararse cuando al insertar o modificar una región queramos poner una clave superior a 200. Por ejemplo usando una variable con ese valor.
o En ese caso debe generar un texto indicando algo así como “Codigo no permitido. Debe ser inferior a 200”
o Recordemos que las excepciones personalizadas deben dispararse de forma manual con el RAISE.*/

SET SERVEROUTPUT ON

DECLARE
    CONTROL_REGIONES EXCEPTION;
    CODIGO NUMBER:=201;
BEGIN
    IF CODIGO > 200 THEN
        RAISE CONTROL_REGIONES;
    ELSE
        INSERT INTO REGIONS VALUES(CODIGO,'PRUEBA');
        COMMIT;
    END IF;
EXCEPTION 
    WHEN CONTROL_REGIONES THEN
        DBMS_OUTPUT.PUT_LINE('El codigo debe ser inferior a 200');
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE(SQLCODE);
        DBMS_OUTPUT.PUT_LINE(SQLERRM);        
END;


--RAISE_APPLICATION_ERROR

SET SERVEROUTPUT ON

DECLARE
    regn number;
    regt varchar2(200);
BEGIN
    regn:=101;
    regt:='ASIA';
    IF regn > 100 THEN
        RAISE_APPLICATION_ERROR(-20001,'La id no puede ser mayor a 100');
    ELSE
        INSERT INTO REGIONS VALUES(regn,regt);
        COMMIT;
    END IF;
END;


/*Modificar la practica anterior para disparar un error con RAISE_APPLICATION en vez de con PUT_LINE. Esto permite que la aplicación pueda capturar y gestionar el error que devuelve el PL/SQL*/

SET SERVEROUTPUT ON
DECLARE
CONTROL_REGIONES EXCEPTION;
CODIGO NUMBER:=201;
BEGIN
if codigo > 200 then
raise control_regiones;
else
INSERT INTO REGIONS VALUES (CODIGO,'PRUEBA');
end if;
exception
when control_regiones then
RAISE_APPLICATION_ERROR(-20001,'El codigo debe ser inferior a 200');

when others then
dbms_output.put_line(SQLcode);
dbms_output.put_line(SQLERRM);
END;


--COLLECCIONES Y TIPO DE COMPUESTOS

--PLSQL RECORDS FILA

SET SERVEROUTPUT ON

DECLARE 
    TYPE EMPLEADO IS RECORD(
        NOMBRE VARCHAR2(100),
        SALARIO NUMBER,
        FECHA EMPLOYEES.HIRE_DATE%TYPE,
        DATOS EMPLOYEES%ROWTYPE
    );
    
    EMPLE1 EMPLEADO;
    EMPLE2 EMPLEADO;
BEGIN
 
    SELECT * INTO EMPLE1.DATOS FROM EMPLOYEES WHERE EMPLOYEE_ID=100;
    EMPLE1.NOMBRE:= EMPLE1.DATOS.FIRST_NAME || ' ' || EMPLE1.DATOS.LAST_NAME;
    EMPLE1.SALARIO:= EMPLE1.DATOS.SALARY*0.80;
    EMPLE1.FECHA:= EMPLE1.DATOS.HIRE_DATE;
    EMPLE2:=EMPLE1;
    
    DBMS_OUTPUT.PUT_LINE(EMPLE1.NOMBRE);
    DBMS_OUTPUT.PUT_LINE(EMPLE1.SALARIO);
    DBMS_OUTPUT.PUT_LINE(EMPLE1.FECHA);
    DBMS_OUTPUT.PUT_LINE(EMPLE1.DATOS.FIRST_NAME);
    DBMS_OUTPUT.PUT_LINE(EMPLE2.DATOS.FIRST_NAME);

END;


--INSERT END UPDATE CON PLSQL RECORDS

CREATE TABLE REGIONES AS SELECT * FROM REGIONS WHERE REGION_ID=0;

DECLARE
    REG1 REGIONS%ROWTYPE;
BEGIN
    SELECT * INTO REG1 FROM REGIONS WHERE REGION_ID=1;
    
    --INSERT
    INSERT INTO REGIONES VALUES REG1;
    COMMIT;
END;

DECLARE 
    REG1 REGIONS%ROWTYPE;
BEGIN
    REG1.REGION_ID:=1;
    REG1.REGION_NAME:='AUSTRALIA';
    --UPDATE
    UPDATE REGIONES SET ROW=REG1 WHERE REGION_ID=1;
    COMMIT;
END;


--COLECCIONES Y TIPOS COMPUESTOS

--ASSOCIATIVE ARRAYS (INDEX BY TABLES)
--SON COLECCIONES PLSQL CON DOS COLUMNAS
--CLAVE PRIMARIA DE TIPO ENTERO O CADENA
--VALORES: UN TIPO QUE PUEDE SER ESCALAR O RECORD

/*
    METODOS DE LOS ARRAYS
    
    EXISTS(N): DETECTA SI EXISTE UN ELEMENTO
    COUNT: NUMERO DE ELEMENTOS
    FIRST: DEVUELVE EL INDICE MAS PEQUENIO
    LAST: DEVUELVE EL INDICE MAS ALTO
    PRIOR(N) DEVUELVE EL INDICE ANTERIOR A N
    NEXT(N): DEVUELVE EL INDICE POSTERIOR A N
    DELETE: BORRA TODO
    DELETE(N): BORRAR EL INDICE N
    DELETE(M,N): BORRA DE LOS INDICES M A N


    DBMS_OUTPUT.PUT_LINE(DEPTS.LAST);
    DBMS_OUTPUT.PUT_LINE(DEPTS.FIRST);
    
    IF DEPTS.EXISTS(3) THEN
        DBMS_OUTPUT.PUT_LINE(DEPTS(3))
    ELSE
        DBMS_OUTPUT.PUT_LINE('ESE VALOR NO EXISTE');
    END IF;

*/


--TRABAJAR CON ARRYAS ASOCIATIVOS

SET SERVEROUTPUT ON

DECLARE
   
    TYPE DEPARTAMENTOS IS TABLE OF
        DEPARTMENTS.DEPARTMENT_NAME%TYPE
    INDEX BY PLS_INTEGER;
    
    TYPE EMPLEADOS IS TABLE OF
        EMPLOYEES%ROWTYPE
    INDEX BY PLS_INTEGER;
    
    DEPTS DEPARTAMENTOS;
    EMPLES EMPLEADOS;

    
BEGIN

    --TIPO SIMPLE
    
    DEPTS(1):='INFORMATICA';
    DEPTS(2):='RRHH';
    DBMS_OUTPUT.PUT_LINE(DEPTS(1));
    DBMS_OUTPUT.PUT_LINE(DEPTS(2));
    DBMS_OUTPUT.PUT_LINE(DEPTS.LAST);
    DBMS_OUTPUT.PUT_LINE(DEPTS.FIRST);
    
    IF DEPTS.EXISTS(3) THEN
        DBMS_OUTPUT.PUT_LINE(DEPTS(3));
    ELSE
        DBMS_OUTPUT.PUT_LINE('ESE VALOR NO EXISTE');
    END IF;
    
    --TIPO COMPUESTO
    
    SELECT * INTO EMPLES(1) FROM EMPLOYEES WHERE EMPLOYEE_ID=100;
    DBMS_OUTPUT.PUT_LINE(EMPLES(1).FIRST_NAME);
    
    SELECT * INTO EMPLES(2) FROM EMPLOYEES WHERE EMPLOYEE_ID=110;
    DBMS_OUTPUT.PUT_LINE(EMPLES(2).FIRST_NAME);

END;


--SELECT MULTIPLES CON ARRAYS ASOCIATIVOS

SET SERVEROUTPUT ON

DECLARE
    TYPE DEPARTAMENTOS IS TABLE OF
        DEPARTMENTS%ROWTYPE
    INDEX BY PLS_INTEGER;
    
    DEPTS DEPARTAMENTOS;
BEGIN
    FOR I IN 1..10 LOOP
        SELECT * INTO DEPTS(I) FROM DEPARTMENTS WHERE DEPARTMENT_ID=I*10;
    END LOOP;
    
    FOR I IN DEPTS.FIRST..DEPTS.LAST LOOP
        DBMS_OUTPUT.PUT_LINE(DEPTS(I).DEPARTMENT_NAME);    
    END LOOP;
END;

--PRACTICA DE COLECCIONES Y RECORDS.

SET SERVEROUTPUT ON

DECLARE
    
    TYPE EMPLE_RECORD IS RECORD (
        NAME VARCHAR2(100),
        SAL EMPLOYEES.SALARY%TYPE,
        COD_DEPT EMPLOYEES.DEPARTMENT_ID%TYPE
    );
    
    TYPE EMPL_TABLE IS TABLE OF
        EMPLE_RECORD
    INDEX BY PLS_INTEGER;
    
    EMPL EMPL_TABLE;
    

BEGIN
    
    FOR I IN 100..206 LOOP
        SELECT FIRST_NAME || ' ' || LAST_NAME, SALARY, DEPARTMENT_ID INTO EMPL(I) FROM EMPLOYEES
        WHERE EMPLOYEE_ID=I;
    END LOOP;
    
    FOR I IN EMPL.FIRST..EMPL.LAST LOOP
        DBMS_OUTPUT.PUT_LINE(EMPL(I).NAME || ' ' || EMPL(I).SAL || ' ' || EMPL(I).COD_DEPT);
    END LOOP;
    
    DBMS_OUTPUT.PUT_LINE(EMPL(EMPL.FIRST).NAME);
    DBMS_OUTPUT.PUT_LINE(EMPL(EMPL.LAST).NAME);
    DBMS_OUTPUT.PUT_LINE(EMPL.COUNT);
    
    FOR I IN EMPL.FIRST..EMPL.LAST LOOP
        IF EMPL(I).SAL < 7000 THEN
            EMPL.DELETE(I);
        END IF;        
    END LOOP;
    
    DBMS_OUTPUT.PUT_LINE(EMPL.COUNT);

END;


--CURSORES EN PLSQL

--ATRIBUTOS IMPLICITOS

-- SQL%ISOPEN
-- SQL%FOUND
-- SQL%NOTFOUND
-- SQL%ROWCOUNT


BEGIN
    UPDATE TEST SET TEST_NAME='PPPP' WHERE TEST_ID=1;
    DBMS_OUTPUT.PUT_LINE(SQL%ROWCOUNT); 
    IF SQL%NOTFOUND THEN
        DBMS_OUTPUT.PUT_LINE('NO ENCONTRADO');
    END IF;
END;


--CICLO DE VIDA DE UN CURSOR

--1. DECLARAR CURSOR
--2. ABRIR CURSOR
--3. LEER FILA DEL CURSOR
--4. FIN DE CURSOR? 
--5. SI. FIN DEL CURSOR, SINO LEER OTRA FILA.
--6. CERRAR CURSOR

--CREAR UN CURSOR

DECLARE
    CURSOR C1 IS SELECT * FROM REGIONS;
    V1 REGIONS%ROWTYPE;
BEGIN
    OPEN C1;
    FETCH C1 INTO V1;
    DBMS_OUTPUT.PUT_LINE(V1.REGION_NAME);
    CLOSE C1;
END;

--ATRIBUTOS EXPLICITOS
/*
    C1%NOTFOUND
    C1%FOUND
    C1%ISOPEN
    C1%ROWCOUNT
*/


--RECORRER UN CURSOR CON EL BUCHEL LOOP

DECLARE
    CURSOR C1 IS SELECT * FROM REGIONS;
    V1 REGIONS%ROWTYPE;
BEGIN
    OPEN C1;
    LOOP
        FETCH C1 INTO V1;
        EXIT WHEN C1%NOTFOUND;
        DBMS_OUTPUT.PUT_LINE(V1.REGION_NAME);
    END LOOP;
    CLOSE C1;
END;

--RECORRER UN CURSOR CON FORSET 
SET SERVEROUTPUT ON

DECLARE
    CURSOR C1 IS SELECT * FROM REGIONS;
    V1 REGIONS%ROWTYPE;
    
    CURSOR C2 IS SELECT REGION_ID, REGION_NAME FROM REGIONS;
    NOMBRE VARCHAR2(100);
    
BEGIN
    FOR I IN C1 LOOP
        DBMS_OUTPUT.PUT_LINE(I.REGION_NAME);
    END LOOP;
    
    FOR I IN C2 LOOP
        DBMS_OUTPUT.PUT_LINE(I.REGION_NAME|| ' ' || I.REGION_ID);
    END LOOP;
END;


--CURSORES CON PARAMETROS

SET SERVEROUTPUT ON
DECLARE
    CURSOR C1(SAL NUMBER) IS SELECT * FROM EMPLOYEES WHERE SALARY > SAL;    
    EMPL EMPLOYEES%ROWTYPE;    
BEGIN
    OPEN C1(80000);
    LOOP
        FETCH C1 INTO EMPL;
        EXIT WHEN C1%NOTFOUND;
        DBMS_OUTPUT.PUT_LINE(EMPL.FIRST_NAME);
    END LOOP;
    DBMS_OUTPUT.PUT_LINE('HE ENCONTRADO ' || C1%ROWCOUNT );
    CLOSE C1;
END;

-- UPDATE Y DELETE CON WHERE CURRENT OF
SET SERVEROUTPUT ON
DECLARE
    EMPL EMPLOYEES%ROWTYPE;
    CURSOR CUR2 IS SELECT * FROM EMPLOYEES FOR UPDATE;
BEGIN
    OPEN CUR2;
    LOOP
        FETCH CUR2 INTO EMPL;
        EXIT WHEN CUR2%NOTFOUND;
        
        IF EMPL.COMMISSION_PCT IS NOT NULL THEN
            UPDATE EMPLOYEES SET SALARY=SALARY*1.10 WHERE CURRENT OF CUR2;
        ELSE
            UPDATE EMPLOYEES SET SALARY=SALARY*1.15 WHERE CURRENT OF CUR2;
        END IF;        
    END LOOP;
    CLOSE CUR2;
END;


/*Hacer un programa que tenga un cursor que vaya visualizando los salarios de los empleados.
Si en el cursor aparece el jefe (Steven King) se debe generar un RAISE_APPLICATION_ERROR indicando que el sueldo del jefe no se puede ver
*/


SET SERVEROUTPUT ON

DECLARE
    CURSOR EMPLS IS SELECT * FROM EMPLOYEES;
BEGIN    
    FOR I IN EMPLS LOOP    
        IF I.FIRST_NAME = 'Steven' AND I.LAST_NAME='King' THEN
            DBMS_OUTPUT.PUT_LINE(I.FIRST_NAME);
            RAISE_APPLICATION_ERROR(-20001,'No se puede mostrar el salario del jefe');           
        ELSE
            DBMS_OUTPUT.PUT_LINE(I.FIRST_NAME || ' ' || I.LAST_NAME || ': SALARIO = ' || I.SALARY);
        END IF;    
    END LOOP;
END;

/*Hacemos un bloque con dos cursores. (Esto se puede hacer fácilmente con una sola SELECT pero vamos a hacerlo de esta manera para probar parámetros en cursores)
o El primero de empleados
o El segundo de departamentos que tenga como parámetro el MANAGER_ID
o Por cada fila del primero, abrimos el segundo curso pasando el ID del MANAGER
o Debemos pintar el Nombre del departamento y el nombre del MANAGER_ID
o Si el empleado no es MANAGER de ningún departamento debemos poner “No es jefe de nada”
*/


SET SERVEROUTPUT ON

DECLARE
    DEPARTAMENTO DEPARTMENTS%ROWTYPE;
    JEFE DEPARTMENTS.MANAGER_ID%TYPE;
    CURSOR EMPLS IS SELECT * FROM EMPLOYEES;
    CURSOR DEPTS(M DEPARTMENTS.MANAGER_ID%TYPE) IS SELECT * FROM DEPARTMENTS WHERE MANAGER_ID=M;
BEGIN

    FOR I IN EMPLS LOOP    
        OPEN DEPTS(I.EMPLOYEE_ID);
        FETCH DEPTS INTO DEPARTAMENTO;
            IF DEPTS%NOTFOUND THEN
                DBMS_OUTPUT.PUT_LINE('NO ES JEFE DE NADIE');
            ELSE 
                DBMS_OUTPUT.PUT_LINE('ES JEFE DEL DEPARTAMENTO ' || DEPARTAMENTO.DEPARTMENT_NAME);
            END IF;
        CLOSE DEPTS;
    END LOOP;

END;


/*Crear un cursor con parámetros que pasando el número de departamento visualice el número de empleados de ese departamento*/

SET SERVEROUTPUT ON
DECLARE
    CURSOR CANT_EMPLS(D DEPARTMENTS.DEPARTMENT_ID%TYPE) IS SELECT COUNT(*) FROM EMPLOYEES WHERE 
    DEPARTMENT_ID=D;
    NUMERO NUMBER;
    CODIGO DEPARTMENTS.DEPARTMENT_ID%TYPE;
BEGIN
    
    CODIGO:=90;
    OPEN CANT_EMPLS(CODIGO);
    FETCH CANT_EMPLS INTO NUMERO;
    DBMS_OUTPUT.PUT_LINE('Numero de empleados de ' || CODIGO || ' es ' || NUMERO);    
    CLOSE CANT_EMPLS;
    
END;

/*Crear un bucle FOR donde declaramos una subconsulta que nos devuelva el nombre de los empleados que sean ST_CLERCK. Es decir, no declaramos el cursor sino que lo indicamos directamente en el FOR.*/

BEGIN
    FOR EMPLE IN (SELECT * FROM EMPLOYEES WHERE JOB_ID='ST_CLERK') LOOP
        DBMS_OUTPUT.PUT_LINE(EMPLE.FIRST_NAME);
    END LOOP;
END;


/*Creamos un bloque que tenga un cursor para empleados. Debemos crearlo con FOR UPDATE.
o Por cada fila recuperada, si el salario es mayor de 8000 incrementamos el salario un 2%
o Si es menor de 800 lo hacemos en un 3%
o Debemos modificarlo con la cláusula CURRENT OF
o Comprobar que los salarios se han modificado correctamente.
*/


SET SERVEROUTPUT ON

DECLARE

    CURSOR C1 IS SELECT * FROM EMPLOYEES FOR UPDATE;

BEGIN

    FOR EMP IN C1 LOOP
    
        IF EMP.SALARY >8000 THEN
            UPDATE EMPLOYEES SET SALARY= SALARY *1.02 WHERE CURRENT OF C1;
        ELSE
            UPDATE EMPLOYEES SET SALARY=SALARY*1.03 WHERE CURRENT OF C1;
        END IF;
    
    END LOOP;

END;



--INTRODUCCION A LOS PROCEDIMIENTOS Y FUNCIONES


/*
    1. CREACION DEL OBJETO
    2. CODIGO PSEUDO COMPILADO
    2. INVOCAR EN CUALQUIER MOMENTO SQL
*/


--CREACION DE PROCEDIMIENTOS

CREATE OR REPLACE PROCEDURE P1
IS
    X NUMBER:=10;
BEGIN
    DBMS_OUTPUT.PUT_LINE(X);
END;

SET SERVEROUTPUT ON
BEGIN
    P1;
END;

EXECUTE P1;

--VER CODIGO FUENTE DE PROCEDIMIENTOS Y FUNCIONES

SELECT * FROM USER_OBJECTS WHERE OBJECT_TYPE='PROCEDURE';

SELECT OBJECT_TYPE, COUNT(*) FROM USER_OBJECTS GROUP BY OBJECT_TYPE;

SELECT * FROM USER_SOURCE WHERE NAME='P1';


--PARAMETROS DE FUNCIONES Y PROCEDIMIENTOS

--IN
--OUT
--IN/OUT

--PARAMETROS DE TIPO IN

CREATE OR REPLACE PROCEDURE CALCULAR_TAX
(EMPL IN EMPLOYEES.EMPLOYEE_ID%TYPE, PORCENTAJE IN NUMBER)
IS
    TAXC NUMBER:=0;
    SAL NUMBER:=0;
BEGIN
    SELECT SALARY INTO SAL FROM EMPLOYEES WHERE EMPLOYEE_ID=EMPL;
    TAXC:= SAL*PORCENTAJE/100;
    DBMS_OUTPUT.PUT_LINE('SALARIO: ' || SAL);
    DBMS_OUTPUT.PUT_LINE('TAX: ' || TAXC);
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        DBMS_OUTPUT.PUT_LINE('NO EXISTE EL EMPLEADO');
END;

EXECUTE CALCULAR_TAX(1000,50);

--PARAMETROS TIPO OUT

CREATE OR REPLACE PROCEDURE CALCULAR_TAX2
(EMPL IN EMPLOYEES.EMPLOYEE_ID%TYPE, PORCENTAJE IN NUMBER, RES OUT NUMBER)
IS    
    SAL NUMBER:=0;
BEGIN
    SELECT SALARY INTO SAL FROM EMPLOYEES WHERE EMPLOYEE_ID=EMPL;
    RES:= SAL*PORCENTAJE/100;
    DBMS_OUTPUT.PUT_LINE('SALARIO: ' || SAL);   
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        DBMS_OUTPUT.PUT_LINE('NO EXISTE EL EMPLEADO');
END;

SET SERVEROUTPUT ON

DECLARE
    EMPL NUMBER;
    PORCENTAJE NUMBER;
    RES NUMBER;
BEGIN
    EMPL:=100;
    PORCENTAJE:=10;
    RES:=0;
    CALCULAR_TAX2(EMPL,PORCENTAJE,RES);
    DBMS_OUTPUT.PUT_LINE('R=' || RES);
END;


--PARAMETROS DE TIPO IN OUT

CREATE OR REPLACE PROCEDURE CALCULAR_TAX3
(EMPL IN EMPLOYEES.EMPLOYEE_ID%TYPE, PORCENTAJE IN OUT NUMBER)
IS    
    SAL NUMBER:=0;
BEGIN
    SELECT SALARY INTO SAL FROM EMPLOYEES WHERE EMPLOYEE_ID=EMPL;
    PORCENTAJE:= SAL*PORCENTAJE/100;
    DBMS_OUTPUT.PUT_LINE('SALARIO: ' || SAL);   
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        DBMS_OUTPUT.PUT_LINE('NO EXISTE EL EMPLEADO');
END;

SET SERVEROUTPUT ON

DECLARE
    EMPL NUMBER;
    PORCENTAJE NUMBER;
  
BEGIN
    EMPL:=100;
    PORCENTAJE:=10;
    CALCULAR_TAX3(EMPL,PORCENTAJE);
    DBMS_OUTPUT.PUT_LINE('R=' || PORCENTAJE);
END;

--PRACTICA CON PROCEDIMIENTOS ALMACENADOS


CREATE OR REPLACE PROCEDURE VISUALIZAR
IS
CURSOR EMPLS IS SELECT FIRST_NAME, LAST_NAME, SALARY FROM EMPLOYEES;
BEGIN
    FOR EMP IN EMPLS LOOP    
        DBMS_OUTPUT.PUT_LINE(EMP.FIRST_NAME || ' ' || EMP.LAST_NAME || ' ' || EMP.SALARY);
    END LOOP;
END;

EXECUTE VISUALIZAR;



CREATE OR REPLACE PROCEDURE VISUALIZAR2 (DEP IN NUMBER, CANT OUT NUMBER)
IS
CURSOR EMPLS IS SELECT FIRST_NAME, LAST_NAME, SALARY FROM EMPLOYEES WHERE DEPARTMENT_ID=DEP;
BEGIN
    CANT:=0;
    FOR EMP IN EMPLS LOOP    
        DBMS_OUTPUT.PUT_LINE(EMP.FIRST_NAME || ' ' || EMP.LAST_NAME || ' ' || EMP.SALARY);
        CANT:=CANT+1;
    END LOOP;
END;

SET SERVEROUTPUT ON

DECLARE
    DEP NUMBER;
    CANT NUMBER;
BEGIN
    DEP:=20;
    VISUALIZAR2(DEP,CANT);
    DBMS_OUTPUT.PUT_LINE(CANT);

END;

CREATE OR REPLACE PROCEDURE FORMATO_CUENTA(NUMERO IN OUT VARCHAR2)
IS
    PARTE1 VARCHAR2(20);
    PARTE2 VARCHAR2(20);
    PARTE3 VARCHAR2(20);
    PARTE4 VARCHAR2(20);
BEGIN
    PARTE1:= SUBSTR(NUMERO,1,4);
    PARTE2:= SUBSTR(NUMERO,5,4);
    PARTE3:= SUBSTR(NUMERO,9,2);
    PARTE4:= SUBSTR(NUMERO,10);
    NUMERO:= PARTE1 || '-' || PARTE2 || '-' || PARTE3 || '-' || PARTE4;
END;



SET SERVEROUTPUT ON 

DECLARE
    X VARCHAR2(50):='15210457901111111111';
BEGIN
    FORMATO_CUENTA(X);
    DBMS_OUTPUT.PUT_LINE(X);
END;

--FUNCIONES EN PLSQL

CREATE OR REPLACE FUNCTION CALC_TAX_F(
    EMPL IN EMPLOYEES.EMPLOYEE_ID%TYPE,
    PORC IN NUMBER) RETURN NUMBER
IS
    TAX NUMBER;
    SAL NUMBER;
BEGIN
    SELECT SALARY INTO SAL FROM EMPLOYEES WHERE EMPLOYEE_ID=EMPL;
    TAX:= SAL*PORC/100;
    RETURN TAX;
EXCEPTION 
    WHEN NO_DATA_FOUND THEN
        DBMS_OUTPUT.PUT_LINE('No existe el empleado');
END;

SET SERVEROUTPUT ON
DECLARE
    A NUMBER;
    B NUMBER;
    R NUMBER;
BEGIN
    A:=120;
    B:=10;
    R:=CALC_TAX_F(A,B);
    DBMS_OUTPUT.PUT_LINE('R=' || R);
END;


SELECT FIRST_NAME, SALARY, ROUND(CALC_TAX_F(EMPLOYEE_ID,10),2)  FROM EMPLOYEES;


CREATE OR REPLACE FUNCTION SUMA_SALARIO_F(
    DEPT IN NUMBER
) RETURN NUMBER
IS
    SUMA NUMBER;
    DEPTS NUMBER;
BEGIN

    SELECT DEPARTMENT_ID INTO DEPTS FROM DEPARTMENTS WHERE DEPARTMENT_ID=DEPT;
    SELECT sum(salary) INTO SUMA FROM EMPLOYEES WHERE DEPARTMENT_ID=DEPT;
    RETURN SUMA;
    
EXCEPTION 
    WHEN NO_DATA_FOUND THEN
         RAISE_APPLICATION_ERROR(-20001,'ERROR, DEPARTAMENTO '||DEPT|| ' NO EXISTE');
END;


SET SERVEROUTPUT ON

DECLARE
    SUMA NUMBER;
    DEPT NUMBER;
BEGIN
    DEPT:=1000;
    SUMA:=SUMA_SALARIO_F(DEPT);
    DBMS_OUTPUT.PUT_LINE(SUMA);
END;

/*Crear una función que tenga como parámetro un número de departamento y que devuelve la suma de los salarios de dicho departamento. La imprimimos por pantalla.

• Si el departamento no existe debemos generar una excepción con dicho mensaje*/


create or replace FUNCTION salarios_dept(dep_id NUMBER) RETURN NUMBER
IS
TOTAL_SAL NUMBER;
dept DEPARTMENTS.department_id%TYPE;
BEGIN
    --COMPROBAR QUE EL DEPARTAMENTO EXISTE. SI NO EXISTE SE DISPARA LA EXCEPCIÓN
    SELECT DEPARTMENT_ID INTO DEPT FROM DEPARTMENTS WHERE DEPARTMENT_ID=DEP_ID;
    --SI EL DEPARTAMENTO EXISTE CALCULAR EL TOTAL
    SELECT sum(salary) INTO TOTAL_SAL from employees where department_id=dep_id group by department_id;
    RETURN TOTAL_SAL;
EXCEPTION
WHEN NO_DATA_FOUND THEN
    --SI EL DEPARTAMENTO NO EXISTE DEVUELVE ERROR
    RAISE_APPLICATION_ERROR(-20001,'ERROR, DEPARTAMENTO '||DEP_ID|| ' NO EXISTE');
END;


--PROBAR LA FUNCIÓN
SET SERVEROUTPUT ON
DECLARE
SAL NUMBER;
DEPT NUMBER:=100;
BEGIN
SAL:=salarios_dept(DEPT);
DBMS_OUTPUT.PUT_LINE('El salario total del departamento ' || DEPT || ' es: ' || SAL);
END;
/


/*Modificar el programa anterior para incluir un parámetro de tipo OUT por el que vaya el número de empleados afectados por la query. Debe ser visualizada en el programa que llama a la función. De esta forma vemos que se puede usar este tipo de parámetros también en una función*/


CREATE OR REPLACE FUNCTION salarios_dept1(dep_id NUMBER, n_empleados OUT NUMBER) RETURN NUMBER
IS
sal NUMBER;
BEGIN
	--COMPROBAR QUE EL DEPARTAMENTO EXISTE. SI NO EXISTE SE DISPARA LA EXCEPCIÓN
    SELECT DEPARTMENT_ID INTO DEPT FROM DEPARTMENTS WHERE DEPARTMENT_ID=DEP_ID;
	--SI EL DEPARTAMENTO EXISTE CALCULAR TOTALES
	SELECT sum(salary),count(salary) INTO SAL,n_empleados from employees where department_id=dep_id group by department_id;
	RETURN sal;
END;
/

--PROBAR LA FUNCIÓN
set serveroutput on
declare
TOTAL_SAL NUMBER;
NUM_EMPLE NUMBER;
DEPT NUMBER:=110;
BEGIN
TOTAL_SAL:=salarios_dept1(DEPT,NUM_EMPLE);
DBMS_OUTPUT.PUT_LINE('El salario total del departamento ' || DEPT || ' es: ' || TOTAL_SAL);
DBMS_OUTPUT.PUT_LINE('El número total de empleados recabados es : ' || NUM_EMPLE);
END;

/*Crear una función llamada CREAR_REGION, donde se pase un nombre de región que debe ser insertada en la tabla REGIONS y que devuelva un número.
De forma automática debe calcular el código de región más alto, añadir 1 e insertar un registro con el nuevo número y la región que se ha pasado.
Si la región no existe debe arrojar un error de control.
El valor devuelto es el número que ha asignado a la región.*/


create or replace FUNCTION CREAR_REGION (nombre varchar2) 
RETURN NUMBER IS
regiones NUMBER;
NOM_REGION VARCHAR2(100);
BEGIN
	--AVERIGUAR SI EXISTE LA REGIÓN. SI YA EXISTE DAMOS ERROR. SI NO EXISTE PASAMOS A EXCEPTION Y SEGUIMOS CON EL PROGRAMA
	SELECT REGION_NAME INTO NOM_REGION FROM REGIONS WHERE REGION_NAME=UPPER(NOMBRE);
	raise_application_error(-20321,'Esta región ya existe!');
EXCEPTION
	-- SI LA REGION NO EXISTE LA INSERTAMOS. ES UN EJEMPLO DE COMO PODEMOS USAR LA EXCEPCION PARA HACER ALGO CORRECTO
	WHEN NO_DATA_FOUND THEN
	SELECT MAX(REGION_ID)+1 INTO REGIONES from REGIONS;
	INSERT INTO REGIONS (region_id,region_name) VALUES (regiones,upper(nombre));
	RETURN REGIONES;
END;
/

--PROBAR LA FUNCIÓN

DECLARE
N_REGION NUMBER;
BEGIN
N_REGION:=crear_region('NORMANDIA');
DBMS_OUTPUT.PUT_LINE('EL NUMERO ASIGNADO ES:'||N_REGION);
END;
/




