SAVE SCREEN TO PANTA1
DO WHILE .T.
DO MESA
SET COLOR TO W/N
@ 4,3 CLEAR TO 23,78
SET COLOR TO W+/BG,GR+/B
@ 3,2 CLEAR TO 22,77
@ 3,2 TO 22,77 DOUBLE
@ 4,20 SAY 'BUSQUEDA DE CANJES SEGUN EL NOMBRE'
@ 6,5 SAY 'NOMBRE:'
NOM=SPACE(40)
@ 6,12 GET NOM PICT '@!'
READ
  IF LASTKEY()=27
     EXIT
  ENDIF
X=1
  DO WHILE .T.  
     IF SUBSTR(NOM,X,2)='  '
          EXIT
     ENDIF
     X=X+1
  ENDDO
NOMB=SUBSTR(NOM,1,X-1)
USE IDENTIFI INDEX IDENT
REINDEX
GO TOP
  DO WHILE .T.
      IF EOF()
           @ 22,10 SAY 'NO HAY MAS'
           WAIT''
           EXIT
      ENDIF
      IF AT(NOMB,NOMBRE)<>0
           SET COLOR TO W+/BG,GR+/B 
           @ 6,5 SAY 'NOMBRE:'
           @ 8,5 SAY 'DIRECCION:'
           @ 11,5 SAY 'CARGO:'
           @ 6,54 SAY 'PAIS:'
           SET COLOR TO GR+/BG
           @ 6,12 SAY NOMBRE
           @ 4,70 SAY CODIGO
           @ 8,15 SAY DIRECCION PICT '9999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999'
         *  @ 9,5 SAY DIRECCION2
           @ 11,11 SAY CARGO PICTURE '@!'
           @ 6,59 SAY PAIS PICT '999999999999999999'
           SET COLOR TO N/R
           @ 24,0 CLEAR TO 24,79
           @ 24,3 SAY '<F3>ENVIADO  <F4>RECIBIDO  <F5>IMPRIMIR TODO  <ENTER>SIGUIENTE '
           SET COLOR TO GR+/R
           @ 24,3 SAY '<F3>'         
           @ 24,16 SAY '<F4>'          
           @ 24,30 SAY '<F5>' 
           @ 24,49 SAY '<ENTER>'
           SET COLOR TO W+/BG,GR+/B   
           @ 21,5 SAY ' '
           SET KEY -2 TO LISTAEN
           SET KEY -3 TO LISTARE

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
RESTORE SCREEN FROM PANTA1
SET KEY -2 TO
SET KEY -3 TO




PROCEDURE LISTARE
                        SET KEY -3 TO
                        SET KEY -2 TO

                         SET COLOR TO W+/BG
                         @ 4,18 SAY 'LIBROS RECIBIDOS DE:'
                         @ 5,4 CLEAR TO 21,76 
                         SET COLOR TO R/BG
                         @ 4,38 SAY NOMBRE PICT '999999999999999999999999999999'
                         COD=CODIGO
                         USE DATOS 
                         GO TOP
                         X=5
                         DO WHILE .T.
                           IF EOF()
                               @ 21,10 SAY 'FIN DE LA BUSQUEDA.  PULSE <ENTER>'
                               WAIT''
                               RESTORE SCREEN FROM PANTA2
                               EXIT
                           ENDIF
                           IF CODIGO=COD .AND. OPERACION='RECIBO'
                               SET COLOR TO W+/BG
                               @ X,5 SAY 'TITULO:'
                               @ X+1,4 SAY 'FECHA:'
                               @ X+1,19 SAY 'TIPO:'
                               @ X+1,35 SAY 'OPERACION:'
                               @ X+1,55 SAY 'N� COMUN:'
                               SET COLOR TO GR+/BG
                               @ X,12 SAY TITULO PICT '999999999999999999999999999999999999999999999999999999999999'
                               @ X+1,10 SAY FECHA
                               @ X+1,24 SAY TIPO
                               @ X+1,45 SAY TIPO_OP
                               @ X+1,64 SAY N_COMUNICA PICT '999999999999'
                               X=X+3
                            ENDIF
                            IF X>20
                              WAIT''
                              @ 5,4 CLEAR TO 22,76    
                              X=5
                            ENDIF
                            SKIP
                          ENDDO 

                  USE IDENTIFI INDEX IDENT
REINDEX
                  SEEK COD
                  SET KEY -3 TO LISTARE
                  SET KEY -2 TO LISTAEN
               
               RETURN


PROCEDURE LISTAEN
                        SET KEY -2 TO
                        SET KEY -3 TO
                         SET COLOR TO W+/BG
                         @ 4,20 SAY 'LIBROS ENVIADOS A:'
                         @ 5,4 CLEAR TO 21,76
                         SET COLOR TO R/BG
                         @ 4,38 SAY NOMBRE PICT '999999999999999999999999999999'
                         COD=CODIGO
                         @ 24,70 SAY COD
                         USE DATOS 
                         GO TOP
                         X=5
                         DO WHILE .T.
                           IF EOF()
                               COLOR3=SETCOLOR()
                               SET COLOR TO GR+/R
                               @ 22,15 SAY 'FIN DE LA BUSQUEDA.  PULSE <ENTER>'
                               WAIT''
                               SET COLOR TO &COLOR3
                               RESTORE SCREEN FROM PANTA2
                               EXIT
                           ENDIF
                           IF CODIGO=COD .AND. OPERACION='ENVIO'
                               SET COLOR TO W+/BG
                               @ X,5 SAY 'TITULO:'
                               @ X+1,4 SAY 'FECHA:'
                               @ X+1,19 SAY 'TIPO:'
                               @ X+1,35 SAY 'OPERACION:'
                               @ X+1,54 SAY 'N� COM:'
                               @ X+1,67 SAY 'CANT:'
                               SET COLOR TO GR+/BG
                               @ X,12 SAY TITULO PICT '999999999999999999999999999999999999999999999999999999999999'
                               @ X+1,10 SAY FECHA
                               @ X+1,24 SAY TIPO
                               @ X+1,45 SAY TIPO_OP
                               @ X+1,61 SAY N_COMUNICA PICT '99999'
                               @ X+1,72 SAY CANTIDAD
                               X=X+3
                            ENDIF
                            IF X>20
                              WAIT''
                              @ 5,4 CLEAR TO 22,76    
                              X=5
                            ENDIF
                            SKIP
                          ENDDO 

                  USE IDENTIFI INDEX IDENT
REINDEX
                  SEEK COD
                  SET KEY -2 TO LISTAEN
                  SET KEY -3 TO LISTARE
            
               RETURN
