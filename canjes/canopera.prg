USE DATOS INDEX DAT
REINDEX
SAVE SCREEN TO PANTALLA05
DO MESA
@ 2,20 SAY '    LISTA DE LIBROS POR OPERACIàN:          '
@ 2,54 SAY OPE
GO TOP
X=4
SET COLOR TO B+/W,GR+/W
DO WHILE .T.
   IF EOF()
       SET COLOR TO GR+/R,GR+/B
      SEL=0
      @ 23,20 SAY '     NO HAY MAS. DESEA IMPRIMIR?        '
      @ 23,53 PROMPT 'NO'
      @ 23,56 PROMPT 'SI'
      MENU TO SEL
         DO CASE 
            CASE SEL=1
                EXIT
            CASE SEL=2
*                DO IMPRICAN
                EXIT
         ENDCASE
   ENDIF  
   IF OPERACION=OPE
     SET COLOR TO R/W
     @ X,2 SAY TITULO    
     SET COLOR TO B+/W
     @ X+1,2 SAY TIPO_OP
     @ X+1,13 SAY TIPO
     @ X+1,22 SAY FECHA
     COD=CODIGO
     NU=NUM
     USE IDENTIFI INDEX IDENT
REINDEX
     SEEK COD
     @ X+1,32 SAY NOMBRE
     @ X+1,74 SAY CODIGO
     USE DATOS INDEX DAT
     LOCATE FOR NUM=NU
     X=X+3
   ENDIF  
   SKIP
   IF X>21
      X=4
      IF LASTKEY()=27
          EXIT
      ENDIF
      WAIT''
      @ 4,1 CLEAR TO 25,79
   ENDIF  
ENDDO
RESTORE SCREEN FROM PANTALLA05
