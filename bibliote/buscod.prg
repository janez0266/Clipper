SET TALK OFF
COLOR_ACT8=SETCOLOR()
STORE 0 TO IMPRIME
STORE 3 TO AYU
STORE "0" TO X
   DO WHILE .T.
       GO TOP
       SET COLOR TO W+/B,GR+/R
       @ 3,63 CLEAR TO 5,77
       @ 3,63 TO 5,77 DOUBLE
       DO TIEMPO3
       @ 3,53 CLEAR TO 6,77
       @ 3,53 TO 6,77 DOUBLE
       DO TIEMPO3
       @ 3,43 CLEAR TO 8,77
       @ 3,43 TO 8,77 DOUBLE
       DO TIEMPO3
       @ 3,33 CLEAR TO 10,77
       @ 3,33 TO 10,77 DOUBLE
       DO TIEMPO3
       @ 3,23 CLEAR TO 13,77
       @ 3,23 TO 13,77 DOUBLE
       DO TIEMPO3
       @ 3,13 CLEAR TO 16,77
       @ 3,13 TO 16,77 DOUBLE
       DO TIEMPO3
       @ 3,3 CLEAR TO 19,77
       @ 3,3 TO 19,77 DOUBLE
       DO TIEMPO3
       @ 4,23 SAY "BUSQUEDA DE UN LIBRO POR SU CODIGO"
       @ 4,4 SAY "컴컴컴컴컴컴컴컴컴�"
       @ 4,57 SAY "컴컴컴컴컴컴컴컴컴컴"
       IF X="1"
           DO MENSAJE
       ENDIF
       X="0"
       SET COLOR TO +W/B
       @ 8,34 SAY " CODIGO "
       SET COLOR TO R+/B
       @ 18,10 SAY "* * * PRESIONE ENTER PARA REGRESAR * * *"
       SET COLOR TO R/B
       COD = SPACE(5)
       @ 10,36 GET COD PICTURE '99999'
       READ
       IF SUBSTR(COD,1,1)='3'.OR.SUBSTR(COD,1,2)='80'.OR. SUBSTR(COD,1,2)='40'
         SET COLOR TO W+/B
         DO REVIBUS
         LOOP
       ENDIF
         IF COD = " "
             EXIT
         ENDIF
       SEEK COD
         IF EOF()
             X="1"
             loop
         endif
       @ 10,34 SAY "      "
       SET COLOR TO +W/B
       @ 6,34 SAY " TITULO "
       SET COLOR TO GR+/B
       STORE 3 TO IMPRIME
       MENSAJE="DATOS GENERALES DEL LIBRO SEGUN SU CODIGO"
       DO BLOQUE
       IF LASTKEY()=27
          EXIT
       ENDIF
    ENDDO
    STORE 0 TO IMPRIME
SET COLOR TO &COLOR_ACT8



PROCEDURE REVIBUS
       @ 3,3 CLEAR TO 22,77
       @ 3,3 TO 22,77 DOUBLE

USE TITULO INDEX TITU
    SEEK COD
    IF EOF()
       RETURN
    ENDIF
    Y=6
    DO WHILE .T.
    SET COLOR TO W+/B
    @ 4,5 SAY 'CODIGO: '
    @ 4,13 SAY CODIGO
    @ 5,35 SAY 'TITULOS:'
    @ Y,4 SAY '='
    SET COLOR TO GR+/B
    @ Y,5 SAY TITULO
    READ
    Y=Y+1
       DO WHILE .T.
         SKIP
         IF CODIGO=COD
             EXIT
         ENDIF
         IF EOF()
            EXIT
         ENDIF

       ENDDO
       IF EOF()
          EXIT
       ENDIF
    ENDDO
    USE REVISTA INDEX REVI
    SEEK COD
    SET COLOR TO W+/B
    @ 15,5 SAY "AUTOR: " 
    @ 16,5 SAY "COLECCION: " 
    @ 17,5 SAY "EDITORIAL: " 
    @ 18,5 SAY "A쩙 EDICION: " 
    @ 18,25 SAY "CANTIDAD: " 
    @ 18,45 SAY "UBICACION: " 
    @ 19,4 SAY "컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴"
    @ 21,5 SAY "OBSERVACION: " 
    SET COLOR TO GR+/B
    @ 15,12 SAY AUTOR PICT "@!"
    @ 16,16 SAY COLECCION PICT "@!"
    @ 17,16 SAY EDITORIAL PICT "@!"
    @ 18,18 SAY ANO
    @ 18,35 SAY CANTIDAD
    @ 18,56 SAY UBICACION  PICT "@!"
    @ 21,18 SAY OBSERVACIO PICT "@!"
    @ 23,12 SAY '                PULSE <ENTER> PARA CONTINUAR                     ' 
    WAIT''
    USE BIBLIO3 INDEX LIBRO
RETURN
