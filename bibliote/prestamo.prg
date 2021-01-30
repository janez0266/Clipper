SET TALK OFF
SET KEY-3 TO
SET WRAP ON
SELE A
USE PROFESO ALIAS PRO
SELE B
USE BIBLIO3 INDEX LIBRO ALIAS LI
STORE 10 TO AYU
DO WHILE .T.
   @ 21,15 SAY SPACE(50)
   @ 3,3 clear to 19,77
   @ 3,3 TO 19,77 DOUBLE
   @ 4,4 SAY "ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄSERVICIO DE PRESTAMO DE LIBROSÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ"
   STORE 0 TO SEL
   SET COLOR TO G+/B
   @ 5,5 TO 17,20 DOUBLE
   SET COLOR TO W+/B,GR+/R
   @ 6,6 PROMPT ' < PRESTAMO > '
   @ 8,6 PROMPT ' < ENTREGA  > '
   @ 10,6 PROMPT ' <  DATOS   > '
   @ 12,6 PROMPT ' < BUSQUEDA > '
   @ 14,6 PROMPT ' < LISTADO  > '
   @ 16,6 PROMPT ' <  SALIR   > '
   MENU TO SEL
      IF LASTKEY()=27
          EXIT
      ENDIF
      DO CASE
        CASE SEL = 1
          SELE B
          @ 5,5 CLEAR TO 15,20
          SET COLOR TO GR+/B
          @ 5,20 TO 7,60
          SET COLOR TO G+/B
          @ 6,30 SAY 'PRESTAMO DE UN LIBRO'
          SET COLOR TO W+/B,GR+/R
          @ 9,6 SAY 'CODIGO DEL LIBRO: '
          COD = SPACE (5)
          @ 9,24 GET COD PICTURE '99999'
          READ
          IF LASTKEY()=27
              EXIT
          ENDIF
          IF COD=' '
             LOOP
          ENDIF
          SEEK COD
          IF EOF()
             SET COLOR TO GR+/B
             @ 11,6 SAY 'EL LIBRO NO EXISTE EN LA BIBLIOTECA'
             SET COLOR TO R+*/B
             @ 21,15 SAY '         PRESIONE  <ENTER> PARA REGRESAR        '
             SET COLOR TO W+/B,GR+/R
             WAIT''
             SET COLOR TO W+/B,GR+/R
             LOOP
          ENDIF
          IF CANTIDAD = 0
             SET COLOR TO GR+/B
             @ 11,6 SAY 'EL LIBRO SE ENCUENTRA PRESTADO. NO HAY MAS.'
             SET COLOR TO R+*/B
             @ 21,15 SAY '         PRESIONE  <ENTER> PARA REGRESAR        '
             SET COLOR TO W+/B,GR+/R
             WAIT""
             SET COLOR TO W+/B,GR+/R
          ENDIF
          IF  CANTIDAD > 0
             SET COLOR TO GR+/B
             @ 11,6 SAY 'PUEDE TOMAR EL LIBRO, LO CARGAREMOS A SU CUENTA'
             @ 13,6 SAY 'DEBE DAR SUS DATOS'
             SET COLOR TO W+/B
             @ 15,6 SAY 'CEDULA: '
             CED=00000000
             @ 15,15 GET CED PICTURE '99999999'
             READ
             SELE A
             LOCATE FOR CEDULA = CED
                IF EOF()
                    SET COLOR TO GR+/B
                    @ 17,15 SAY 'NO ESTA INSCRITO EN EL C.E.E.L.A.'
                    @ 18,15 SAY 'NO PUEDE PRESTAR UN LIBRO.'
                    SET COLOR TO R+*/B
                    @ 21,15 SAY '         PRESIONE  <ENTER> PARA REGRESAR        '
                    SET COLOR TO W+/B,GR+/R
                    WAIT''
                    SET COLOR TO W+/B
                    LOOP
                ENDIF
             @ 17,6 SAY 'FECHA: '
             FEC=DATE()
             @ 17,15 GET FEC PICTURE '@E'
             READ
             @ 15,30 SAY 'NOMBRE: '
             SET COLOR TO G+/B
             @ 15,40 SAY NOMBRE + APEL
             SET COLOR TO W+/B,GR+/R
                IF CODIGO1=' '
                   REPLACE CODIGO1 WITH COD
                   REPLACE FECHA1 WITH FEC
                ELSE
                   IF CODIGO2=' '
                     REPLACE CODIGO2 WITH COD
                     REPLACE FECHA2 WITH FEC
                   ELSE
                      IF CODIGO3=' '
                        REPLACE CODIGO3 WITH COD
                        REPLACE FECHA3 WITH FEC
                      ELSE
                        IF CODIGO4=' '
                          REPLACE CODIGO4 WITH COD
                          REPLACE FECHA4 WITH FEC
                        ELSE
                          IF CODIGO5=' '
                           REPLACE CODIGO5 WITH COD
                           REPLACE FECHA5 WITH FEC
                          ELSE
                            IF CODIGO6=' '
                             REPLACE CODIGO6 WITH COD
                             REPLACE FECHA6 WITH FEC
                            ELSE
                              IF CODIGO7=' '
                               REPLACE CODIGO7 WITH COD
                               REPLACE FECHA7 WITH FEC
                              ELSE
                                IF CODIGO8=' '
                                  REPLACE CODIGO8 WITH COD
                                  REPLACE FECHA8 WITH FEC
                                ELSE
                                  IF CODIGO9=' '
                                   REPLACE CODIGO9 WITH COD
                                   REPLACE FECHA9 WITH FEC
                                  ELSE
                                    @ 18,10 SAY 'YA TIENE PRESTADO 9 LIBROS. NO PUEDE PRESTAR MAS.'
                                    WAIT''
                                    LOOP
                                  ENDIF
                                ENDIF
                              ENDIF
                            ENDIF
                         ENDIF
                      ENDIF
                    ENDIF
                  ENDIF
                ENDIF
             REPLACE NUMTOT WITH NUMTOT+1
             @ 17,30 SAY 'LIBROS PRESTADOS:'
             @ 17,48 SAY NUMTOT
             SELE B
             CAN=CANTIDAD-1
             REPLACE CANTIDAD WITH CAN
             SET COLOR TO R+*/B
             @ 21,15 SAY '         PRESIONE  <ENTER> PARA REGRESAR        '
             SET COLOR TO W+/B,GR+/R
             WAIT''
             ENDIF
       CASE SEL = 2
          SELE B
          @ 5,5 CLEAR TO 15,20
          SET COLOR TO GR+/B
          @ 5,20 TO 7,60
          SET COLOR TO G+/B
          @ 6,30 SAY 'ENTREGA DE UN LIBRO'
          SET COLOR TO W+/B,GR+/R
          @ 9,6 SAY 'CODIGO DEL LIBRO: '
          COD = SPACE (5)
          @ 9,24 GET COD PICTURE '99999'
          READ
          IF LASTKEY()=27
             EXIT
          ENDIF
          IF COD=' '
             LOOP
          ENDIF
          SEEK COD
          IF EOF()
            SET COLOR TO R+/B
            @ 11,6 SAY 'EL LIBRO NO EXISTE EN LA BIBLIOTECA'
            SET COLOR TO R+*/B
             @ 21,15 SAY '         PRESIONE  <ENTER> PARA REGRESAR        '
             SET COLOR TO W+/B,GR+/R
            WAIT''
            LOOP
          ENDIF
          @ 11,6 SAY 'INTRODUZCA SU CEDULA: '
          CED=00000000
          @ 11,27 GET CED PICTURE '99999999'
          READ
          SELE A
          LOCATE FOR CEDULA=CED
                IF CODIGO1=COD
                  REPLACE CODIGO1 WITH '     '
                  REPLACE FECHA1 WITH CTOD ('  /  /  ')
                ELSE
                   IF CODIGO2=COD
                     REPLACE CODIGO2 WITH '     '
                  REPLACE FECHA2 WITH CTOD ('  /  /  ')
                   ELSE
                      IF CODIGO3=COD
                        REPLACE CODIGO3 WITH '     '
                        REPLACE FECHA3 WITH CTOD ('  /  /  ')
                      ELSE
                        IF CODIGO4=COD
                         REPLACE CODIGO4 WITH '     '
                         REPLACE FECHA4 WITH CTOD ('  /  /  ')
                        ELSE
                          IF CODIGO5=COD
                           REPLACE CODIGO5 WITH '     '
                           REPLACE FECHA5 WITH CTOD ('  /  /  ')
                          ELSE
                            IF CODIGO6=COD
                             REPLACE CODIGO6 WITH '     '
                             REPLACE FECHA6 WITH CTOD ('  /  /  ')
                            ELSE
                              IF CODIGO7=COD
                               REPLACE CODIGO7 WITH '     '
                               REPLACE FECHA7 WITH CTOD ('  /  /  ')
                              ELSE
                                IF CODIGO8=COD
                                  REPLACE CODIGO8 WITH '     '
                                  REPLACE FECHA8 WITH CTOD ('  /  /  ')
                                ELSE
                                  IF CODIGO9=COD
                                   REPLACE CODIGO9 WITH '     '
                                   REPLACE FECHA9 WITH CTOD ('  /  /  ')
                                  ELSE
                                     SET COLOR TO GR+/B
                                     @ 18,10 SAY 'UD NO TIENE ESE LIBRO'
                                     SET COLOR TO R+*/B
                                     @ 21,15 SAY '         PRESIONE  <ENTER> PARA REGRESAR        '
                                     SET COLOR TO W+/B,GR+/R
                                     WAIT''
                                     LOOP
                                  ENDIF
                                ENDIF
                              ENDIF
                            ENDIF
                         ENDIF
                      ENDIF
                    ENDIF
                  ENDIF
                ENDIF

          REPLACE NUMTOT WITH NUMTOT-1
          SET COLOR TO GR+/B
          @ 13,6 SAY 'EL LIBRO HA SIDO DESCONTADO DE SU CUENTA'
          @ 15,6 SAY 'UD TODAVIA TIENE   LIBROS'
          SET COLOR TO R+/B
          @ 15,23 SAY NUMTOT
          SELE B
          CAN=CANTIDAD+1
          REPLACE CANTIDAD WITH CAN
          SET COLOR TO R+*/B
          @ 21,15 SAY '         PRESIONE  <ENTER> PARA REGRESAR        '
          SET COLOR TO W+/B,GR+/R
          WAIT""
       CASE SEL = 3
          @ 5,5 CLEAR TO 15,20
          SET COLOR TO GR+/B
          @ 5,20 TO 7,60
          SET COLOR TO G+/B
          @ 6,25 SAY 'DATOS DEL NUEVO INTEGRANTE'
          SET COLOR TO W+/B,GR+/R
          @ 10,5 SAY 'INTRODUZCA LA CEDULA DEL NUEVO INTEGRANTE: '
          CED=00000000
          @ 10,48 GET CED PICTURE '99999999'
          READ
          IF CED=0
             LOOP
          ENDIF
          SELE A
          LOCATE FOR CEDULA=CED
             IF FOUND()
                SET COLOR TO GR+/B
                @ 12,5 SAY ' YA ESTA EN EL LISTADO DE INTEGRANTES'
                SET COLOR TO R+*/B
                @ 21,15 SAY '         PRESIONE  <ENTER> PARA REGRESAR        '
                SET COLOR TO W+/B,GR+/R
                WAIT''
                LOOP
             ENDIF
           APPEND BLANK
           REPLACE CEDULA WITH CED
           @ 12,5 SAY 'NOMBRE: '
           @ 12,13 GET NOMBRE PICTURE '@!'
           @ 12,25 SAY 'APELLIDO: '
           @ 12,35 GET APEL PICTURE '@!'
           @ 14,5 SAY 'DEPENDENCIA: '
           @ 14,18 GET DEPENDEN PICTURE '@!'
           READ
           SET COLOR TO R+*/B
           @ 21,15 SAY '         PRESIONE  <ENTER> PARA REGRESAR        '
           SET COLOR TO W+/B,GR+/R
           WAIT''
           LOOP
       CASE SEL = 4
       DO WHILE .T.
         @ 5,5 CLEAR TO 18,75
         @ 21,15 SAY SPACE(40)
         SET COLOR TO GR+/B
         @ 5,5 TO 7,32
         @ 5,33 TO 7,48
         @ 5,49 TO 7,66
         SET COLOR TO R+*/B
         @ 21,15 SAY '         PRESIONE  <ESCAPE> PARA REGRESAR        '
         SET COLOR TO G+/B
         @ 6,7 SAY 'BUSCAR UN LIBRO PRESTADO'
         SET COLOR TO W+/B,GR+/R
         @ 6,34 PROMPT '< POR CODIGO >'
         @ 6,50 PROMPT '< POR PERSONA >'
         MENU TO OPC
         IF LASTKEY()=27
            EXIT
         ENDIF
           DO CASE
              CASE OPC = 1
                SELE A
                @ 5,49 CLEAR TO 7,66
                @ 9,10 SAY 'CODIGO DEL LIBRO A BUSCAR:'
                COD = SPACE(5)
                @ 9,36 GET COD PICTURE '99999'
                READ
                IF COD = SPACE(5)
                   EXIT
                ENDIF
                IF LASTKEY()=27
                   EXIT
                ENDIF
                GO TOP
                X=0
                Y=0
                DO WHILE .T.
                  IF EOF()
                     SET COLOR TO G+/B
                     @ 18,30 SAY 'FIN DE LA BUSQUEDA'
                     SET COLOR TO R+*/B
                     @ 21,15 SAY '         PRESIONE  <ENTER> PARA REGRESAR        '
                     SET COLOR TO W+/B,GR+/R
                     WAIT''
                     EXIT
                  ENDIF
                  DO CASE
                    CASE CODIGO1 = COD
                         DO PERSONA
                    CASE CODIGO2 = COD
                         DO PERSONA
                    CASE CODIGO3 = COD
                         DO PERSONA
                    CASE CODIGO4 = COD
                         DO PERSONA
                    CASE CODIGO5 = COD
                         DO PERSONA
                    CASE CODIGO6 = COD
                         DO PERSONA
                    CASE CODIGO7 = COD
                         DO PERSONA
                    CASE CODIGO8 = COD
                         DO PERSONA
                    CASE CODIGO9 = COD
                         DO PERSONA
                  ENDCASE
                  SKIP
                ENDDO
              CASE OPC = 2
              SELE A
              DO WHILE .T.
                @ 5,33 CLEAR TO 7,48
                @ 8,5 SAY 'INTRODUZCA LA CEDULA:'
                CED=0
                @ 8,26 GET CED PICTURE '99999999'
                READ
                IF LASTKEY()=27
                   EXIT
                ENDIF
                IF CED=0
                  LOOP
                ENDIF
                SELE A
                LOCATE FOR CEDULA=CED
                IF EOF()
                   @ 18,30 SAY 'NO EXISTE ESA PERSONA'
                   SET COLOR TO R+*/B
                   @ 21,15 SAY '         PRESIONE  <ENTER> PARA REGRESAR        '
                   SET COLOR TO W+/B,GR+/R
                   WAIT''
                   EXIT
                ENDIF
                SET COLOR TO GR+/B
                @ 8,36 SAY NOMBRE + APEL
                SET COLOR TO G+/B
                @ 13,8 SAY 'LISTA DE LIBROS'
                SET COLOR TO R+/B
                @ 10,27 SAY 'ÉÍ'
                @ 11,27 SAY 'ÌÍ'
                @ 12,27 SAY 'ÌÍ'
                @ 13,25 SAY 'ÍÍÎÍ'
                @ 14,27 SAY 'ÌÍ'
                @ 15,27 SAY 'ÌÍ'
                @ 16,27 SAY 'ÌÍ'
                @ 17,27 SAY 'ÌÍ'
                @ 18,27 SAY 'ÈÍ'
                SET COLOR TO W+/B,GR+/R
                X=0
                IF CODIGO1 <> SPACE(5)
                    @ 10+X,30 SAY CODIGO1
                    @ 10+X,37 SAY FECHA1
                    X=X+1
                ENDIF
                IF CODIGO2 <> SPACE(5)
                    @ 10+X,30 SAY CODIGO2
                    @ 10+X,37 SAY FECHA2
                    X=X+1
                ENDIF
                IF CODIGO3 <> SPACE(5)
                    @ 10+X,30 SAY CODIGO3
                    @ 10+X,37 SAY FECHA3
                    X=X+1
                ENDIF
                IF CODIGO4 <> SPACE(5)
                    @ 10+X,30 SAY CODIGO4
                    @ 10+X,37 SAY FECHA4
                    X=X+1
                ENDIF
                IF CODIGO5 <> SPACE(5)
                    @ 10+X,30 SAY CODIGO5
                    @ 10+X,37 SAY FECHA5
                    X=X+1
                ENDIF
                IF CODIGO6 <> SPACE(5)
                    @ 10+X,30 SAY CODIGO6
                    @ 10+X,37 SAY FECHA6
                    X=X+1
                ENDIF
                IF CODIGO7 <> SPACE(5)
                    @ 10+X,30 SAY CODIGO7
                    @ 10+X,37 SAY FECHA7
                    X=X+1
                ENDIF
                IF CODIGO8 <> SPACE(5)
                    @ 10+X,30 SAY CODIGO8
                    @ 10+X,37 SAY FECHA8
                    X=X+1
                ENDIF
                IF CODIGO9 <> SPACE(5)
                    @ 10+X,30 SAY CODIGO9
                    @ 10+X,37 SAY FECHA9
                    X=X+1
                ENDIF
                SET COLOR TO R+*/B
                @ 21,15 SAY '         PRESIONE  <ENTER> PARA REGRESAR        '
                SET COLOR TO W+/B,GR+/R
                WAIT''
                EXIT

               ENDDO

           ENDCASE
         ENDDO
       CASE SEL = 5
          SAVE SCREEN TO PANTA01
          @ 5,5 CLEAR TO 17,20
          @ 4,4 SAY "ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ<  LISTADO DE LIBROS PRESTADOS   >ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ"
          SELE A
          GO TOP
          X=6
          DO WHILE .T.
              IF EOF()
                  @ 21,20 SAY 'NO HAY MAS......'
                  SELEC=1
                  @ 21,37 PROMPT '<REGRESAR>'
                  @ 21,48 PROMPT '<IMPRIMIR>'
                  MENU TO SELEC
                     DO CASE
                         CASE SELEC=1
                              EXIT
                         CASE SELEC=2
                              DO PRINTER
                              EXIT
                         ENDCASE
              ENDIF
              @ X,4 SAY NOMBRE PICT '99999999'
              @ X,13 SAY APEL
              @ X,24 SAY CODIGO1
              @ X,30 SAY CODIGO2
              @ X,36 SAY CODIGO3
              @ X,42 SAY CODIGO4
              @ X,48 SAY CODIGO5
              @ X,54 SAY CODIGO6
              @ X,60 SAY CODIGO7
              @ X,66 SAY CODIGO8
              @ X,72 SAY CODIGO9
              IF X=18
                  @ 21,25 SAY 'PRESIONE <ENTER> PARA VER MAS'
                  WAIT''
                  @ 21,25 SAY '                             '
                  @ 5,4 CLEAR TO 18,76
                  X=6
              ENDIF
              SKIP
              X=X+1
          ENDDO

          RESTORE SCREEN FROM PANTA01

       CASE SEL = 6
          EXIT
     ENDCASE

ENDDO
CLEAR ALL
USE BIBLIO3 INDEX LIBRO

PROCEDURE PERSONA
SET COLOR TO GR+/B
@ 11+X,5+Y SAY NOMBRE + APEL
X=X+1
IF X=18
   X=0
   Y=30
ENDIF
SET COLOR TO W+/B,GR+/R
RETURN

PROCEDURE CODI
   SELE B
   @ 9,6 SAY 'CODIGO DEL LIBRO: '
   COD = SPACE (5)
   @ 9,24 GET COD PICTURE '99999'
   READ
   SEEK COD
RETURN

PROCEDURE PRINTER
MENSAJE='             LIBROS PRESTADOS'
P=1
    SET DEVICE TO PRINT
    DO FONPRIN
    X=13
          SELE A
          GO TOP
          
          DO WHILE .T.
              IF EOF()
                  @ X+1,20 SAY 'NO HAY MAS PRESTAMOS......'
                  EJECT
                  EXIT
              ENDIF
              @ X,4 SAY NOMBRE PICT '99999999'
              @ X,13 SAY APEL
              @ X,24 SAY CODIGO1
              @ X,30 SAY CODIGO2
              @ X,36 SAY CODIGO3
              @ X,42 SAY CODIGO4
              @ X,48 SAY CODIGO5
              @ X,54 SAY CODIGO6
              @ X,60 SAY CODIGO7
              @ X,66 SAY CODIGO8
              @ X,72 SAY CODIGO9
              IF X=40
                  X=13
                  EJECT
              ENDIF
              SKIP
              X=X+1
          ENDDO
          SET DEVICE TO SCREEN

RETURN
