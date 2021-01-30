SET TALK OFF
COLOR2=SETCOLOR()
STORE 0 TO IMPRIME
SET COLOR TO +W/B,GR+/R
             GO TOP
             @ 11,3 CLEAR TO 12,77
             @ 11,3 TO 12,77 DOUBLE
             DO TIEMPO3
             @ 10,3 CLEAR TO 13,77
             @ 10,3 TO 13,77 DOUBLE
             DO TIEMPO3
             @ 9,3 CLEAR TO 14,77
             @ 9,3 TO 14,77 DOUBLE
             DO TIEMPO3
             @ 8,3 CLEAR TO 15,77
             @ 8,3 TO 15,77 DOUBLE
             DO TIEMPO3
             @ 7,3 CLEAR TO 16,77
             @ 7,3 TO 16,77 DOUBLE
             DO TIEMPO3
             @ 6,3 CLEAR TO 17,77
             @ 6,3 TO 17,77 DOUBLE
             DO TIEMPO3
             @ 5,3 CLEAR TO 18,77
             @ 5,3 TO 18,77 DOUBLE
             DO TIEMPO3
             @ 3,3 CLEAR TO 20,77
             @ 3,3 TO 20,77 DOUBLE
             DO TIEMPO3
             @ 4,4 SAY "ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄLISTA DE LIBROS FALTANTESÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ"
             X=6
             CANLIB=0
             DO WHILE .T.
                 IF EOF()
                   SET COLOR TO G+/B
                   STORE 11 TO IMPRIME
                   MENSAJE = "LISTADO DE LIBROS QUE FALTAN EN LA BIBLIOTECA"
                   @ 19,5 SAY "NO HAY MAS LIBROS QUE CONSULTAR"
                   @ 19,40 SAY "PRESIONE <ENTER> PARA REGRESAR"
                   WAIT""
                   SET COLOR TO W+/R
                   @ 10,16 CLEAR TO 14,60
                   @ 10,16 TO 14,60
                   @ 12,20 SAY 'TOTAL DE LIBROS FALTANTES: '
                   @ 12,50 SAY CANLIB PICTURE '9999'
                   WAIT''
                   EXIT
                ENDIF
                IF CANTIDAD = 0
                   CANLIB=CANLIB+1
                   SET COLOR TO R+/B
                   @ X,4 SAY "ÉCODIGO: "
                   @ X,17 SAY "ÍÍÍÍÍÍÍÍÍÍÍÍAUTOR: "
                   @ X+1,4 SAY "È"
                   SET COLOR TO W+/B
                   @ X,12 SAY CODIGO
                   @ X+1,5 SAY TITULO
                   @ X,35 SAY AUTOR_NOM + AUTOR_APEL
                   X=X+2
                   IF X>17
                      X=6
                      SET COLOR TO G+/B
                      @ 19,40 SAY "PRESIONE <ENTER> PARA CONTINUAR"
                      WAIT""
                      SET COLOR TO W+/B
                      IF LASTKEY()=27
                         EXIT
                      ENDIF
                      @ 6,4 CLEAR TO 19,76
                   ENDIF
                ENDIF
                SKIP
             ENDDO
STORE 0 TO IMPRIME
SET COLOR TO &COLOR2