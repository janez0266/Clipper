SET TALK OFF
SET SAFETY OFF
COLOR3=SETCOLOR()
STORE 0 TO SEMAFORO
 DO WHILE .T.
 SET COLOR TO +W/B,GR+/R
    STORE 7 TO AYU
    @ 11,26 CLEAR TO 14,40
    @ 11,26 TO 14,40 DOUBLE
    DO TIEMPO3
    @ 9,26 CLEAR TO 14,49
    @ 9,26 TO 14,49 DOUBLE
    DO TIEMPO3
    @ 7,20 CLEAR TO 14,49
    @ 7,20 TO 14,49 DOUBLE
    DO TIEMPO3
    @ 7,14 CLEAR TO 16,49
    @ 7,14 TO 16,49 DOUBLE
    DO TIEMPO3
    @ 7,14 CLEAR TO 18,58
    @ 7,14 TO 18,58 DOUBLE
    DO TIEMPO3
    @ 5,14 CLEAR TO 18,67
    @ 5,14 TO 18,67 DOUBLE
    DO TIEMPO3
    @ 3,8 CLEAR TO 18,67
    @ 3,8 TO 18,67 DOUBLE
    DO TIEMPO3
    @ 3,2 CLEAR TO 20,67
    @ 3,2 TO 20,67 DOUBLE
    DO TIEMPO3
    @ 3,2 CLEAR TO 22,76
    @ 3,2 TO 22,76 DOUBLE
    DO TIEMPO3
    @ 4,3 say "����������������BLOQUE DE MODIFICACION DE DATOS DEL LIBRO���������������"
    @ 5,5 SAY "CODIGO: "
    COD=SPACE(5)
    @ 5,13 GET COD PICTURE '99999'
    READ
    IF SUBSTR(COD,1,1)='3'.OR.SUBSTR(COD,1,2)='80'.OR. SUBSTR(COD,1,2)='40'
       DO REVIMO
       RETURN
       LOOP
    ENDIF
    IF COD=" "
       EXIT
    ENDIF

    SEEK COD
    IF EOF()
       DO MENSAJE4
       EXIT
    ENDIF
    @ 5,5 SAY "CODIGO: "
    @ 5,13 SAY COD
    @ 7,34 SAY "TITULO: "
    @ 9,5 GET TITULO PICT "@!"
    @ 11,5 SAY "AUTOR: NOMBRE:" GET AUTOR_NOM PICT "@!"
    @ 11,40 SAY "APELLIDO:" GET AUTOR_APEL PICT "@!"
    @ 13,5 SAY "MATERIA " GET MATERIA PICT "@!"
    @ 13,29 SAY "EDITORIAL " GET EDITORIAL PICT "@!"
    @ 15,5 SAY "A�O EDICION " GET ANO_ED
    @ 15,25 SAY "CANTIDAD: " GET CANTIDAD
    @ 15,45 SAY "UBICACION: " GET UBICACION  PICT "@!"
    @ 17,3 SAY "������������������������������������������������������������������������"
    @ 19,5 SAY "OBSERVACION: " GET OBSERVACIO PICT "@!"
    READ
    SET COLOR TO GR+/BR
    @ 11,16 CLEAR TO 15,66
    SET COLOR TO GR+/R
    @ 10,15 TO 14,65 DOUBLE
    @ 11,16 CLEAR TO 13,64
    @ 12,17 SAY "DESEA MODIFICAR OTRO LIBRO ?  S/N   "
    SEL = " "
    @ 12,50 GET SEL PICT "@!"
    READ
    SET COLOR TO W+/B,GR+/R
    IF SEL = "N"
       RETURN
    ENDIF
 ENDDO
 SET COLOR TO &COLOR3

PROCEDURE MENSAJE4
SAVE SCREEN TO SCREEN4
    SET COLOR TO N/W
    @ 10,10 CLEAR TO 14,64
    @ 10,10 TO 14,64 DOUBLE
    @ 12,12 SAY "EL LIBRO NO SE ENCUENTRA, PRUEBE DE NUEVO"
WAIT""
RESTORE SCREEN FROM SCREEN4
RETURN

PROCEDURE REVIMO
USE TITULO INDEX TITU
    SEEK COD
    IF EOF()
       DO MENSAJE4
       RETURN
    ENDIF
    X=7
    DO WHILE .T.
    @ 5,5 SAY 'CODIGO: '
    @ 5,13 SAY CODIGO
    @ 6,35 SAY 'TITULOS:'
    @ X,5 GET TITULO
    READ
    X=X+1
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
    @ 13,5 SAY "AUTOR: " GET AUTOR PICT "@!"
    @ 14,5 SAY "COLECCION " GET COLECCION PICT "@!"
    @ 15,5 SAY "EDITORIAL " GET EDITORIAL PICT "@!"
    @ 16,5 SAY "A�O EDICION " GET ANO
    @ 16,25 SAY "CANTIDAD: " GET CANTIDAD
    @ 16,45 SAY "UBICACION: " GET UBICACION  PICT "@!"
    @ 17,3 SAY "������������������������������������������������������������������������"
    @ 19,5 SAY "OBSERVACION: " GET OBSERVACIO PICT "@!"
    READ
    USE BIBLIO3 INDEX LIBRO
    SET COLOR TO GR+/BR
    @ 11,16 CLEAR TO 15,66
    SET COLOR TO GR+/R
    @ 10,15 TO 14,65 DOUBLE
    @ 11,16 CLEAR TO 13,64
    @ 12,17 SAY "DESEA MODIFICAR OTRO LIBRO ?  S/N   "
    SEL = " "
    @ 12,50 GET SEL PICT "@!"
    READ
    SET COLOR TO W+/B,GR+/R
    IF SEL = "N"
       RETURN
    ENDIF
RETURN
