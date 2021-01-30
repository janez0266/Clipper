SET TALK OFF
STORE 4 TO AYU
STORE 0 TO IMPRIME
COLOR_ACT9=SETCOLOR()
GO TOP
SET COLOR TO +W/B
           @ 10,3 CLEAR TO 14,77
           @ 10,3 TO 14,77 DOUBLE
           DO TIEMPO3
           @ 9,3 CLEAR TO 15,77
           @ 9,3 TO 15,77 DOUBLE
           DO TIEMPO3
           @ 8,3 CLEAR TO 16,77
           @ 8,3 TO 16,77 DOUBLE
           DO TIEMPO3
           @ 7,3 CLEAR TO 17,77
           @ 7,3 TO 17,77 DOUBLE
           DO TIEMPO3
           @ 6,3 CLEAR TO 18,77
           @ 6,3 TO 18,77 DOUBLE
           DO TIEMPO3
           @ 4,3 CLEAR TO 20,77
           @ 4,3 TO 20,77 DOUBLE
           DO TIEMPO3
           @ 5,8 SAY "APELLIDO DEL AUTOR A BUSCAR"
           AUT = SPACE (15)
           @ 5,45 GET AUT PICTURE "@!"
           READ
           IF AUT=' '
              RETURN
           ENDIF
           X=6
           DO WHILE .T.
            IF EOF()
               STORE 4 TO IMPRIME
               MENSAJE="LISTADO DE LIBROS SEGUN EL AUTOR"
               SET COLOR TO R+/B
               @ 19,5 SAY "NO HAY MAS LIBROS QUE CONSULTAR"
               @ 19,40 SAY "PULSE <ENTER> PARA REGRESAR"
               WAIT""
               SET COLOR TO W+/B
               EXIT
            ENDIF
            IF AUTOR_APEL = AUT
              SET COLOR TO R+/B
              @ X,4 SAY "ÉCODIGO: "
              @ X,20 SAY " AUTOR: "
              @ X+1,4 SAY "È"
              SET COLOR TO G+/B
              @ X,12 SAY CODIGO
              @ X+1,5 SAY TITULO
              @ X,28 SAY AUTOR_NOM + AUTOR_APEL
              SET COLOR TO R+/B
              X=X+2
              IF X>17
                 X=6
                 SET COLOR TO R+/B
                 @ 19,40 SAY "PULSE <ENTER> PARA CONTINUAR"
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
SET COLOR TO &COLOR_ACT9
