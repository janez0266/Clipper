SAVE SCREEN TO PANTA1
USE DATOS INDEX DAT
REINDEX
   GO TOP
   N=1
   DO WHILE .T.
      IF EOF()
          EXIT
      ENDIF
      REPLACE NUM WITH N
      N=N+1
      SKIP
   ENDDO
   USE
DO WHILE .T.
DO MESA
SET COLOR TO W/N
@ 4,3 CLEAR TO 23,78
SET COLOR TO W+/BG,GR+/B
@ 3,2 CLEAR TO 22,77
@ 3,2 TO 22,77 DOUBLE
@ 4,20 SAY 'BUSQUEDA DE CANJES SEGUN EL TITULO'
@ 6,5 SAY 'TITULO:'
TIT=SPACE(60)
@ 6,12 GET TIT PICT '@!'
READ
  IF LASTKEY()=27
     EXIT
  ENDIF
X=1
  DO WHILE .T.  
     IF SUBSTR(TIT,X,2)='  '
          EXIT
     ENDIF
     X=X+1
  ENDDO
TITUL=SUBSTR(TIT,1,X-1)
USE DATOS INDEX DAT
REINDEX
GO TOP
TEMP=' '
  DO WHILE .T.
      IF EOF()
           @ 22,10 SAY 'NO HAY MAS'
           WAIT''
           EXIT
      ENDIF
      IF AT(TITUL,TITULO)<>0 .AND. TEMP<>TITULO
           TEMP=TITULO
           SET COLOR TO W+/BG,GR+/B 
           @ 6,5 SAY TITULO
           @ 24,0 CLEAR TO 24,79
           
           @ 24,3 SAY '<F4>SELECCIONAR LIBRO                        <ENTER>SIGUIENTE '
           SET COLOR TO GR+/R
           @ 24,3 SAY '<F4>'         
           @ 24,48 SAY '<ENTER>'
           SET COLOR TO W+/BG,GR+/B   
           @ 21,5 SAY ' '
           SET KEY -3 TO LISTA2

           SAVE SCREEN TO PANTA2
           WAIT''
           IF LASTKEY()=27
                EXIT
           ENDIF
       ENDIF
       @ 6,4 CLEAR TO  19,76
       SKIP
    ENDDO
ENDDO
USE
SET KEY -3 TO
RESTORE SCREEN FROM PANTA1



PROCEDURE LISTA2
USE DATOS INDEX DAT
REINDEX
GO TOP
X=8
DO WHILE .T.
     IF EOF()
          @ 22,10 SAY 'NO HAY MAS'
          WAIT''
          EXIT
     ENDIF
     IF TITULO=TEMP
          COD=CODIGO
          NUMERO=NUM
          USE IDENTIFI INDEX IDENT
	  REINDEX
          SEEK COD
          @ X,10 SAY NOMBRE
          @ X,45 SAY CODIGO
          X=X+2
          USE DATOS INDEX DAT
          LOCATE FOR NUM=NUMERO
      ENDIF
      SKIP
ENDDO
USE
RETURN
