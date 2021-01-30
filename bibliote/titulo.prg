SET TALK OFF
STORE 9 TO AYU
SAVE SCREEN TO AUX1
GO TOP
DO WHILE .T.
P=1
@ 1,0 CLEAR TO 24,79
IF LASTKEY()=27
   RETURN
ENDIF
@ 8,0 TO 14,79 DOUBLE
@ 10,22 SAY 'PALABRA A BUSCAR EN EL TITULO: '
PAL=SPACE(70)
@ 12,4 GET PAL PICTURE '@!'
READ
X=1
   DO WHILE .T.
       IF SUBSTR(PAL,X,2)='  '
          EXIT
       ENDIF
       X=X+1
   ENDDO
PALA=SUBSTR(PAL,1,X-1)

SET COLOR TO R/W
@ 3,0 CLEAR TO 24,79
@ 3,0 TO 24,79 DOUBLE
SET COLOR TO N+/W
GO TOP
X=4
DO WHILE .T.
      IF EOF()
         USE TITULO INDEX TITU
         GO TOP
         DO WHILE .T.
         IF EOF()
              EXIT
         ENDIF
         IF AT(PALA,TITULO)<>0
            IF SUBSTR(CODIGO,1,1)='3' 
               SET COLOR TO N/BG
            ENDIF
            IF SUBSTR(CODIGO,1,2)='40'
               SET COLOR TO N/G
            ENDIF
            IF SUBSTR(CODIGO,1,2)='80'
               SET COLOR TO N/GR
            ENDIF
            @ X,1 SAY CODIGO
            @ X,7 SAY TITULO
            X=X+1
         ENDIF
         IF X=20
            SET COLOR TO G+*/W
            @ 23,20 SAY '* * * PULSE ENTER PARA CONTINUAR * * *'
            WAIT''
            IF LASTKEY()=27
                RETURN
            ENDIF
            SET COLOR TO N+/W
            @ 4,1 CLEAR TO 23,78
            X=4
         ENDIF
         SKIP
         ENDDO
         USE BIBLIO3 INDEX LIBRO
         SET COLOR TO R+/W
         @ 23,20 SAY '* * * NO HAY MAS LIBROS QUE CONSULTAR * * *'
         WAIT''
         IF LASTKEY()=27
                RETURN
            ENDIF
         SET COLOR TO GR+/R,W+/B
         @ 10,19 CLEAR TO 14,65
         @ 10,19 TO 14,65 DOUBLE
         @ 12,21 SAY 'DESEA IMPRIMIR EL LISTADO ANTERIOR?'
         @ 12,58 PROMPT 'NO'
         @ 12,61 PROMPT 'SI'
         MENU TO SELEC
           DO CASE
               CASE SELEC =2
                  DO IMPRESORA
                  EXIT
           ENDCASE
         EXIT
      ENDIF
      IF AT(PALA,TITULO)<>0

         IF SUBSTR(CODIGO,1,2)='50'
            SET COLOR TO N/R
         ENDIF
         IF SUBSTR(CODIGO,1,2)='60'
            SET COLOR TO N/B
         ENDIF
         IF SUBSTR(CODIGO,1,2)='70'
            SET COLOR TO N/BR
         ENDIF
         IF SUBSTR(CODIGO,1,2)='90'
            SET COLOR TO R/BG
         ENDIF
         @ X,1 SAY CODIGO
         @ X,7 SAY TITULO
         X=X+1
      ENDIF
      IF X=20
         SET COLOR TO G+*/W
         @ 23,20 SAY '* * * PULSE ENTER PARA CONTINUAR * * *'
         WAIT''
         IF LASTKEY()=27
                EXIT
            ENDIF
         SET COLOR TO N+/W
         @ 4,1 CLEAR TO 23,78
         X=4
      ENDIF
      SKIP
ENDDO
SET COLOR TO GR+/R
RESTORE SCREEN FROM AUX1
EXIT
ENDDO




PROCEDURE IMPRESORA
SET DEVICE TO PRINT
MENSAJE='LISTADO DE BUSQUEDA EN EL TITULO: '+PAL
DO FONPRIN2
GO TOP
X=8
DO WHILE .T.
      IF EOF()
         @ X+2,20 SAY '* * * NO HAY MAS LIBROS QUE CONSULTAR * * *'
         EJECT
         EXIT
      ENDIF
      IF AT(PALA,TITULO)<>0
         @ X,0 SAY CHR(15)
         @ X,3 SAY CODIGO
         @ X,13 SAY TITULO
         @ X,86 SAY AUTOR_NOM
         @ X,104 SAY AUTOR_APEL
         @ X,121 SAY UBICACION
         @ X,131 SAY CANTIDAD
         @ X,130 SAY CHR(18)
         X=X+1
      ENDIF
      IF X=50
         P=P+1
         EJECT
         DO FONPRIN2
         X=8
      ENDIF
      SKIP
ENDDO
SET DEVICE TO SCREEN
RETURN
