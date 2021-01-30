SET TALK OFF
SET KEY -4 TO AYUD
GO TOP
@ 0,0 CLEAR TO 24,79
@ 0,0 TO 3,79 DOUBLE
@ 0,35 SAY '<F5> AYUDA'
@ 1,2 SAY 'NUMERO DE LETRAS: '
ESP=0
@ 1,40 GET ESP
READ
@ 2,2 SAY 'PALABRA A BUSCAR EN EL TITULO: '
PAL=SPACE(ESP)
@ 2,40 GET PAL
READ
DISPLAY CODIGO,TITULO FOR PAL $ TITULO OFF
SET COLOR TO N/W
WAIT'          >>>>>>>>>> PULSE UNA TECLA PARA CONTINUAR <<<<<<<<<<<<'
SET COLOR TO

PROCEDURE AYUD

@ 8,0 TO 19,66
@ 10,4 SAY '     Para buscar un libro por alguna palabra en el TITULO,'
@ 11,4 SAY 'primero debe  indicar cuantas  letras tiene la  Palabra a '
@ 12,4 SAY 'buscar. Por ejemplo: Para buscar los titulos que contengan'
@ 13,4 SAY 'CAPITALISMO, debe indicar primero que tiene 11 letras. '
@ 14,4 SAY '    Si le indica que tiene 4 letras, le buscar  todos los '
@ 15,4 SAY 'Titulos que contengan las palabras CAPITAL, CAPITALISMO, '
@ 16,4 SAY 'CAPITAN, CAPITULACION, etc. Se repiten las 4 primeras'
@ 17,4 SAY 'letras de la palabra buscada.                             '
WAIT''
@ 8,0 CLEAR TO 19,66
RETURN
