SAVE SCREEN TO PAA1

DO WHILE .T.    
    SET COLOR TO W/N
    @ 5,29 CLEAR TO 9,76
    SET COLOR TO W+/B,GR+/R
    @ 4,28 CLEAR TO 8,75
    @ 4,28 TO 8,75
    @ 22,5 CLEAR TO 24,74
    @ 22,5 TO 24,74
    IF LASTKEY()=27
          EXIT
    ENDIF
    SET COLOR TO GR+/B
    @ 5,35 SAY 'LISTA DE LAS DIRECCIONES POR PAIS'
    SET COLOR TO W+/B,GR+/R
    @ 6,30 PROMPT 'NACIONALES' MESSAGE 'LISTA DE LOS DATOS DE LAS PERSONAS EN VENEZUELA'
    @ 6,41 PROMPT 'INTERNACIONALES' MESSAGE 'LISTA DE DATOS DE PERSONAS FUERA DE VENEZUELA'
    @ 6,57 PROMPT 'PERSONAL' MESSAGE 'LISTA DESDE UN CODIGO EN ADELANTE'
    IF LASTKEY()=27
        EXIT
    ENDIF
    MENU TO TIPO  
    SW=0
    IF TIPO=3
       USE IDENTIFI INDEX IDENT 
REINDEX
       COD=0
       @ 6,66 SAY 'COD:'
       @ 6,70 GET COD PICT '999'
       READ
       SW=1
    ENDIF   
    IF SW=0
       USE IDENTIFI INDEX PAIS
       REINDEX
    ENDIF
  
    @ 7,31 PROMPT '   POR PANTALLA   ' MESSAGE '      MUESTRA LA LISTA SOLO POR PANTALLA      '
    @ 7,50 PROMPT '   POR IMPRESORA  ' MESSAGE '      MUESTRA LA LISTA SOLO POR LA IMPRESORA        '
    MENU TO SELE
       DO CASE 
         CASE SELE=1
             SAVE SCREEN TO PAA2
             @ 3,2 CLEAR TO 23,77 
             @ 3,2 TO 23,77
             X=4
             GO TOP
             DO WHILE .T.
                IF EOF()
                    SET COLOR TO R/B
                    @ 23,20 SAY 'NO HAY MAS QUE CONSULTAR..PRESIONE <ENTER>'
                    WAIT''
                    SET COLOR TO W+/B,GR+/R
                    EXIT
                ENDIF
                IF TIPO=1 .AND. PAIS='VENEZUELA'
*.AND. CONDICION='CANJE'
                    @ X,70 SAY CODIGO
                    @ X,4 SAY NOMBRE
                    @ X+1,4 SAY CARGO
                    @ X+2,4 SAY DIRECCION
                    *@ X+3,4 SAY DIRECCION2
                    X=X+5
                ENDIF
                IF TIPO=2 .AND. PAIS<>'VENEZUELA'
* .AND. CONDICION='CANJE'
                   @ X,70 SAY CODIGO
                   @ X,4 SAY NOMBRE
                   @ X,53 SAY PAIS 
                   @ X+1,4 SAY CARGO
                   @ X+2,4 SAY DIRECCION
                   *@ X+3,4 SAY DIRECCION2
                   X=X+5
                ENDIF
                IF TIPO=3
                   IF SW=1
                      SEEK COD
                      SW=0
                   ENDIF
                   @ X,70 SAY CODIGO
                   @ X,4 SAY NOMBRE
                   @ X,53 SAY PAIS 
                   @ X+1,4 SAY CARGO
                   @ X+2,4 SAY DIRECCION
                   *@ X+3,4 SAY DIRECCION2
                   X=X+5
                ENDIF
                IF X>20
                   X=4
                   IF LASTKEY()=27
                       EXIT
                   ENDIF
                   WAIT''
                   @ 5,3 CLEAR TO 22,76
                ENDIF
                SKIP
             ENDDO
         RESTORE SCREEN FROM PAA2
         CASE SELE=2
             DO AVISOIMPRIMIR
             DO REVI_IMPRESORA
             IF .NOT. ISPRINTER()
               SET DEVICE TO SCREEN
               EXIT
             ENDIF
             SET DEVICE TO PRINT
             P=1
             IF TIPO = 1
             *IF PAIS='VENEZUELA'
                MENSAJE='LISTADO DE DIRECCIONES NACIONALES'
             ENDIF
             IF TIPO = 2
             *IF PAIS<>'VENEZUELA'
                MENSAJE='LISTADO DE DIRECCIONES INTERNACIONALES'
             ENDIF
             IF TIPO = 3
                 MENSAJE='LISTADO ANEXO DE LOS ULTIMOS EN ENTRAR AL CANJE'
             ENDIF
             DO ENCABEZA
*             DO ENCAB
             X=4
             GO TOP
             DO WHILE .T.
                IF EOF()
                   * @ X+1,20 SAY '....(*)....'
                    DO PIE
                    EJECT
                    EXIT
                ENDIF
                IF TIPO=1 .AND. PAIS='VENEZUELA'
*.AND. CONDICION='CANJE'
                    IF NOMBRE <>"   "
                         X=X+1
                         @ X,5 SAY CODIGO
                         @ X,10 SAY NOMBRE
                    ENDIF
                    IF CARGO <>"   "
                         X=X+1
                         @ X,10 SAY CARGO
                    ENDIF
                    IF DIRECCION <> "   "
                         X=X+1
                         @ X,10 SAY DIRECCION
                    ENDIF
                    *IF DIRECCION2 <>"    "
                     *    X=X+1
                      *   @ X,10 SAY DIRECCION2
                    *ENDIF
                    X=X+1
                ENDIF
                IF TIPO=2 .AND. PAIS<>'VENEZUELA'
*.AND. CONDICION='CANJE'
                    IF NOMBRE <>"   "
                         X=X+1
                         @ X,5 SAY CODIGO
                         @ X,10 SAY NOMBRE
                    ENDIF
                    IF CARGO <>"   "
                         X=X+1
                         @ X,10 SAY CARGO
                    ENDIF
                    IF DIRECCION <> "   "
                         X=X+1
                         @ X,10 SAY DIRECCION
                    ENDIF
                    *IF DIRECCION2 <>"    "
                    *     X=X+1
                    *     @ X,10 SAY DIRECCION2
                    *ENDIF
                    X=X+1
                   *@ X,53 SAY PAIS
                ENDIF
                IF TIPO=3
                   IF SW=1
                      SEEK COD
                      SW=0
                    ENDIF
                    IF NOMBRE <>"   "
                         X=X+1
                         @ X,5 SAY CODIGO
                         @ X,10 SAY NOMBRE
                    ENDIF
                    IF CARGO <>"   "
                         X=X+1
                         @ X,10 SAY CARGO
                    ENDIF
                    IF DIRECCION <> "   "
                         X=X+1
                         @ X,10 SAY DIRECCION
                    ENDIF
                    *IF DIRECCION2 <>"    "
                    *     X=X+1
                    *     @ X,10 SAY DIRECCION2
                    *ENDIF
                    X=X+1
                 ENDIF

               IF X>54
                   DO PIE
                   EJECT
                   P=P+1
                   DO ENCABEZA
                   X=4
                ENDIF
                SKIP
             ENDDO
             SET DEVICE TO SCREEN
       ENDCASE
ENDDO
USE
RESTORE SCREEN FROM PAA1

 

PROCEDURE ENCABEZA
@ 0,0 SAY CHR(18)
@ 0,1 SAY CHR(27)+CHR(69)
@ 0,9 SAY "L.U.Z. - C.E.E.L.A. - DPTO. DE COMPUTACION."
@ 1,00 SAY CHR(27)+CHR(87)+CHR(49)
@ 1,6 SAY "SISTEMA DE CANJES"
@ 2,00 SAY CHR(27)+CHR(87)+CHR(48)
@ 2,9 SAY MENSAJE
@ 3,5 SAY "อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ"
@ 4,0 SAY CHR(27)+CHR(70) 
RETURN

PROCEDURE PIE
@ 59,0 SAY CHR(27)+CHR(69)
@ 59,5 SAY "อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ"
@ 60,20 SAY DATE()
@ 60,60 SAY "PAGINA:"
@ 60,68 SAY P PICTURE "999"
@ 60,75 SAY CHR(27)+CHR(70)
RETURN


PROCEDURE AVISOIMPRIMIR
SAVE SCREEN TO PANTAIMPRI
SET COLOR TO W/N
@ 12,30 CLEAR TO 17,50
SET COLOR TO GR+/R
@ 11,29 CLEAR TO 16,59
@ 11,29 TO 15,59
@ 13,31 SAY "PREPARE LA IMPRESORA"
@ 14,31 SAY "   PULSE ENTER"
WAIT""
RETURN

PROCEDURE REVI_IMPRESORA
*------------------------------*
*  REVISAR  IMPRESORA          *
*------------------------------*
SAVE SCREEN TO PANTAREVI
DO  WHILE .NOT.ISPRINTER()
    SET CONSOLE OFF
    ?? TONE(500,5)
    ?? TONE(600,5)
    SET CONSOLE ON
    SET COLOR TO GR+/R
    @ 10,40 CLEAR TO 15,76
    @ 10,40 TO 15,76 DOUBLE
    SET COLOR TO W+*/R
    @ 11,48 SAY '<< A T E N C I O N >>'
    SET COLOR TO W+/R
    @ 13,44 SAY 'LA IMPRESORA NO ESTA LISTA'
    @ 14,42 SAY 'VERIFIQUE Y PULSE CUALQUIER TECLA'
    impri=INKEY(0)
    IF impri=27
       EXIT
    ENDIF
ENDDO

RESTORE SCREEN FROM PANTAREVI
RETURN

