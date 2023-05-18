/*
CONVENCIONES DE NOMBRES EN SQL

Todas las palabras preferiblemente en INGLES

Tablas:
    - Nombres en plural

    - Si algun nombre de tabla tiene dos palabras
        Medical Areas

    - Entonces para todas poner la notacion
        UPPER_SNAKE_CASE
        Ej: MEDICAL_AREAS

    - Si todas las tablas tienen como nombre una sola palabra:
        PascalCase
        Ej: Medics

Columnas:
    - Nombres en singular y en minuscula

    - Si el atributo tiene más de dos palabras va en snake_case:
        last_name

Llaves primarias (Atributos):
    - Nombra las claves primarias de tus tablas como id.
        student_id
    - Deben ser de tipo entero grande sin signo y con auto-incremento.
        IND UNSIGNED AUTOINCREMENT
    - Jamás deben permitir valores nulos.
        NOT NULL

Llaves foraneas (Atributos):
    - Nombrar el atributo como
        city_ref_id


Constraints
    Constraint de Llave primaria:
        PK_subjects

    Constraint de Llave foranea:
        FK_tablalocal_tablareferenciada
        FK_subjects_signatures

    Constraints CHECK
        CHK_atributo_tabla

Marcas de tiempo a cada cabla
    Añadir a la tabla los campos especiales 
        created_at
        updated_at

Indices:
    IX_Medics_medic_id


Procedimientos almacenados
    SP_Orders_getNewOrder
    SP_Subscriptions_storeNewSuscription

Triggers:
    TR_Orders_UpdateProducts


---------------------------------------------------------------------------------
Recomendaciones de Columnas
    En columnas tipo VARCHAR, No usar NULL por defecto
    Usar cadenas vacias por defecto ""

    Usar VARCHAR si el texto a almacenar se prevee menor de 255 caracteres

    Usar TEXT para textos planos extensos

    Columnas con valores por defecto NO DEBERÍAN SER NULL

----------------------------------------------------------------------------------
Formato de texto
    Comentar secciones de código dificiles de entender

    Usar separadores entre Secciones de código
        -- ó     / *----* /

    Usar comillas simples para delimitar cadenas

    Usar parentesis para mejor legibilidad
        WHERE (color=’red’ AND (size = 1 OR size = 2))

    Utilice los bloques BEGIN..END solo cuando haya varias instrucciones dentro de un segmento de código condicional IF.

    Colocar las instrucciones SET antes de cualquier código de ejecución en el procedimiento.


Ver más en:
    https://es.stackoverflow.com/questions/26452/qué-convención-de-nombrado-debo-utilizar-en-bases-de-datos

    https://blog.sqlauthority.com/2007/06/04/sql-server-database-coding-standards-and-guidelines-part-1/

    https://www.ibm.com/docs/en/opw/8.2.0?topic=guidelines-select-clause
*/