STORE 0 TO IMPRIME
COLOR1=SETCOLOR()
SET COLOR TO +W/B,GR+/R
             STORE 5 TO AYU
             GO TOP
             @ 4,40 CLEAR TO 20,42
             @ 4,40 TO 20,42 DOUBLE
             DO TIEMPO3
             @ 4,34 CLEAR TO 20,47
             @ 4,34 TO 20,47 DOUBLE
             DO TIEMPO3
             @ 4,27 CLEAR TO 20,53
             @ 4,27 TO 20,53 DOUBLE
             DO TIEMPO3
             @ 4,21 CLEAR TO 20,59
             @ 4,21 TO 20,59 DOUBLE
             DO TIEMPO3
             @ 4,15 CLEAR TO 20,65
             @ 4,15 TO 20,65 DOUBLE
             DO TIEMPO3
             @ 4,9 CLEAR TO 20,71
             @ 4,9 TO 20,71 DOUBLE
             DO TIEMPO3
             @ 4,3 CLEAR TO 20,77
             @ 4,3 TO 20,77 DOUBLE
             DO TIEMPO3
             @ 5,8 SAY "INTRODUZCA LA MATERIA QUE DESEE BUSCAR "
             MAT = SPACE(15)
             @ 5,50 GET MAT PICTURE "@!"
             READ
             IF MAT=' '
                RETURN
             ENDIF
             X=6
             CANLIB=0
                DO WHILE .T.
                   IF EOF()
                      SET COLOR TO G+/B
                      STORE 5 TO IMPRIME
                      MENSAJE = "LISTADO POR MATERIA: " + MAT
                      @ 19,5 SAY "NO HAY MAS LIBROS QUE CONSULTAR"
                      @ 19,40 SAY "PULSE <ENTER> PARA REGRESAR"
                      WAIT""
                      SET COLOR TO W+/R
                      @ 10,16 CLEAR TO 14,60
                      @ 10,16 TO 14,60
                      @ 12,20 SAY 'TOTAL DE LIBROS POR MATERIA: '
                      @ 12,50 SAY CANLIB PICTURE '9999'
                      WAIT''
                      STORE 0 TO IMPRIME
                      EXIT
                   ENDIF

                   IF MATERIA = MAT
                      CANLIB=CANLIB+1
                      SET COLOR TO R+/B
                      @ X,4 SAY "浜 CODIGO:"
                      @ X,17 SAY " 様様様様様様 AUTOR: "
                      @ X+1,4 SAY "藩"
                      SET COLOR TO W+/B
                      @ X,14 SAY CODIGO
                      @ X+1,7 SAY TITULO
                      @ X,38 SAY AUTOR_NOM + AUTOR_APEL
                      X=X+2
                      IF X>17
                         X=6
                         SET COLOR TO G+/B
                         @ 19,40 SAY "PULSE <ENTER> PARA CONTINUAR"
                         WAIT''
                         SET COLOR TO W+/B
                         IF LASTKEY()=27
                            EXIT
                         ENDIF
                         @ 6,4 CLEAR TO 19,76
                      ENDIF
                    ENDIF
                    SKIP
                 ENDDO

SET COLOR TO &COLOR1