/*
DECIMAL(X,Y)
    X Todos los digitos
    Y digitos a la derecha del punto decimal

    - Y no debe ser más grande que X
    - X sólo puede tener 65 dígitos
    - Y sólo puede tener 30 dígitos (de los 65 que tiene X como máximo)

Ej: DECIMAL(6,4)
    Puede ser: 78,4374
    Ver más: 

Puede usarse la opción UNSIGNED

https://parzibyte.me/blog/2017/09/22/entendiendo-tipo-dato-decimal-en-mysql/
*/