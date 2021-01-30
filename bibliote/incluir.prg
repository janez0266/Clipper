SET TALK OFF
SET SAFETY OFF
STORE 0 TO SEMAFORO
DO WHILE .T.
SET COLOR TO +W/B,GR+/R
    STORE 6 TO AYU
    @ 3,2 CLEAR TO 6,5
    @ 3,2 TO 6,5 DOUBLE
    DO TIEMPO3
    @ 3,2 CLEAR TO 8,13
    @ 3,2 TO 8,13 DOUBLE
    DO TIEMPO3
    @ 3,2 CLEAR TO 10,22
    @ 3,2 TO 10,22 DOUBLE
    DO TIEMPO3
    @ 3,2 CLEAR TO 12,31
    @ 3,2 TO 12,31 DOUBLE
    DO TIEMPO3
    @ 3,2 CLEAR TO 14,40
    @ 3,2 TO 14,40 DOUBLE
    DO TIEMPO3
    @ 3,2 CLEAR TO 16,49
    @ 3,2 TO 16,49 DOUBLE
    DO TIEMPO3
    @ 3,2 CLEAR TO 18,58
    @ 3,2 TO 18,58 DOUBLE
    DO TIEMPO3
    @ 3,2 CLEAR TO 20,67
    @ 3,2 TO 20,67 DOUBLE
    DO TIEMPO3
    @ 3,2 CLEAR TO 22,76
    @ 3,2 TO 22,76 DOUBLE
    DO TIEMPO3
    @ 4,3 say "ДДДДДДДДДДДДДДДДBLOQUE DE INTRODUCCION DE DATOS DEL LIBROДДДДДДДДДДДДДДД"
    @ 6,5 SAY "CODIGO: "
    COD=SPACE(5)
    @ 6,13 GET COD PICTURE '99999'
    READ
    IF SUBSTR(COD,1,1)='3'.OR.SUBSTR(COD,1,2)='80'.OR. SUBSTR(COD,1,2)='40'
       DO REVI
       RETURN
       LOOP
    ENDIF
    IF COD=" "
       EXIT
    ENDIF
    USE BIBLIO3 INDEX LIBRO
    SEEK COD
       IF CODIGO = COD
          SET COLOR TO GR+/BR
          @ 15,14 CLEAR TO 19,64
          SET COLOR TO GR+/R
          @ 14,13 CLEAR TO 18,63
          @ 14,13 TO 18,63 DOUBLE
          @ 15,15 SAY "EL LIBRO YA EXISTE, NO LO PUEDE INCLUIR DE NUEVO"
          @ 17,15 SAY "      PRESIONE <ENTER> PARA CONTINUAR"
          WAIT""
          SET COLOR TO +W/B,+GR/R
          @ 14,13 CLEAR TO 18,63
          LOOP
       ENDIF
       IF EOF()
        APPEND BLANK
        REPLACE CODIGO WITH COD
        @ 6,5 SAY "CODIGO: "
        @ 6,13 SAY COD
        @ 7,34 SAY "TITULO: "
        @ 9,5 GET TITULO PICTURE "@!"
        @ 11,5 SAY "AUTOR: NOMBRE:" GET AUTOR_NOM PICT "@!"
        @ 11,40 SAY "APELLIDO:" GET AUTOR_APEL PICT "@!"
        @ 13,5 SAY "MATERIA " GET MATERIA PICT "@!"
        @ 13,29 SAY "EDITORIAL " GET EDITORIAL PICT "@!"
        @ 15,5 SAY "AҐO EDICION " GET ANO_ED
        @ 15,25 SAY "CANTIDAD: " GET CANTIDAD
        @ 15,45 SAY "UBICACION: " GET UBICACION PICT "@!"
        @ 17,3 SAY "ДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДД"
        @ 19,5 SAY "OBSERVACION: " GET OBSERVACIO PICT "@!"

        READ
        USE
        USE BIBLIO3 INDEX LIBRO
        SET COLOR TO GR+/BR
        @ 11,16 CLEAR TO 15,66
        SET COLOR TO +GR/R
        @ 10,15 TO 14,65 DOUBLE
        @ 11,16 CLEAR TO 13,64
        @ 12,17 SAY "DESEA INTRODUCIR OTRO LIBRO ?  S/N   "
        SEL = " "
        @ 12,47 GET SEL PICT "@!"
        READ
        SET COLOR TO GR+/B,+W/BG
        IF SEL = "N"
          RETURN
        ENDIF
       ENDIF
   ENDDO
   


PROCEDURE REVI
USE TITULO INDEX TITU
    SEEK COD
       IF CODIGO = COD
          SET COLOR TO GR+/BR
          @ 15,14 CLEAR TO 19,64
          SET COLOR TO GR+/R
          @ 14,13 CLEAR TO 18,63
          @ 14,13 TO 18,63 DOUBLE
          @ 15,15 SAY "EL LIBRO YA EXISTE, NO LO PUEDE INCLUIR DE NUEVO"
          @ 17,15 SAY "      PRESIONE <ENTER> PARA CONTINUAR"
          WAIT""
          SET COLOR TO +W/B,+GR/R
          @ 14,13 CLEAR TO 18,63
          RETURN
       ENDIF
       IF EOF()
       X=6
       DO WHILE .T.
        TIT=SPACE(70)
        @ 6,5 SAY "CODIGO: "
        @ 6,13 SAY COD
        @ X,34 SAY "TITULO: "
        @ X+1,5 GET TIT PICTURE "@!"
        READ
        IF TIT<>' '
          APPEND BLANK
          REPLACE CODIGO WITH COD
          REPLACE TITULO WITH TIT
        ELSE
          EXIT
        ENDIF
        X=X+2
        IF X>21
           EXIT
        ENDIF
       ENDDO
       USE
       USE REVISTA INDEX REVI
       @ 8,5 CLEAR TO 20,75
       APPEND BLANK
        REPLACE CODIGO WITH COD
        @ 9,5 SAY "AUTOR:" GET AUTOR PICT "@!"
        @ 11,5 SAY "COLECCIаN:" GET COLECCION PICT "@!"
        @ 13,5 SAY "EDITORIAL:" GET EDITORIAL PICT "@!"
        @ 15,5 SAY "AҐO:" GET ANO
        @ 15,25 SAY "CANTIDAD: " GET CANTIDAD
        @ 15,45 SAY "UBICACION: " GET UBICACION PICT "@!"
        @ 17,3 SAY "ДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДД"
        @ 19,5 SAY "OBSERVACION:" GET OBSERVACIO PICT "@!"

        READ
        USE
        USE BIBLIO3 INDEX LIBRO
        SET COLOR TO GR+/BR
        @ 11,16 CLEAR TO 15,66
        SET COLOR TO +GR/R
        @ 10,15 TO 14,65 DOUBLE
        @ 11,16 CLEAR TO 13,64
        @ 12,17 SAY "DESEA INTRODUCIR OTRO LIBRO ?  S/N   "
        SEL = " "
        @ 12,47 GET SEL PICT "@!"
        READ
        SET COLOR TO GR+/B,+W/BG
        IF SEL = "N"
          RETURN
        ENDIF
       ENDIF

