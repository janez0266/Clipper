SET TALK OFF
STORE 8 TO AYU
GO TOP
SET COLOR TO +W
           @ 4,3 TO 20,77 DOUBLE
           @ 5,4 CLEAR TO 19,76
           @ 5,20 SAY "TEMA QUE DESEA BUSCAR: "
           STORE 0 TO TE
           @ 7,6 PROMPT " >  PETROLEO   < "
           @ 9,6 PROMPT " > INTEGRACION < "
           @ 11,6 PROMPT " >  CULTURAS   < "
           @ 13,6 PROMPT " >CIVILIZACION < "
           @ 15,6 PROMPT " >  POLITICA   < "
           @ 17,6 PROMPT " > DESARROLLO  < "
           @ 7,30 PROMPT " > INFLACION   < "
           @ 9,30 PROMPT " > INDUSTRIA   < "
           @ 11,30 PROMPT " >  FINANZAS   < "
           @ 13,30 PROMPT " >   CRISIS    < "
           @ 15,30 PROMPT " > ESTADISTICA < "
           @ 17,30 PROMPT " > CAPITALISMO < "
           @ 7,54 PROMPT " >   ECONOMIA  < "
           @ 9,54 PROMPT " >   COMERCIO  < "
           @ 11,54 PROMPT " > AGRICULTURA < "
           @ 13,54 PROMPT " >SUBDESARROLLO< "

           MENU TO TE
           DO CASE
              CASE TE = 1
                   STORE 'PETROLEO' TO TEM
              CASE TE = 2
                   STORE 'INTEGRACION' TO TEM
              CASE TE = 3
                   STORE 'CULTURAS' TO TEM
              CASE TE = 4
                   STORE 'CIVILIZACION' TO TEM
              CASE TE = 5
                   STORE 'POLITICA' TO TEM
              CASE TE = 6
                   STORE 'DESARROLLO' TO TEM
              CASE TE = 7
                   STORE 'INFLACION' TO TEM
              CASE TE = 8
                   STORE 'INDUSTRIA' TO TEM
              CASE TE = 9
                   STORE 'FINANZAS' TO TEM
              CASE TE = 10
                   STORE 'CRISIS' TO TEM
              CASE TE = 11
                   STORE 'ESTADISTICA' TO TEM
              CASE TE = 12
                   STORE 'CAPITALISMO' TO TEM
              CASE TE = 13
                   STORE 'ECONOMIA' TO TEM
              CASE TE = 14
                   STORE 'COMERCIO' TO TEM
              CASE TE = 15
                   STORE 'AGRICULTURA' TO TEM
              CASE TE = 16
                   STORE 'SUBDESARROLLO' TO TEM
           ENDCASE

           SET COLOR TO N/W
           @ 5,50 SAY TEM
           SET COLOR TO +W
           X=8
           @ 6,4 CLEAR TO 19,76
           DO WHILE .T.
            IF EOF()
               @ 19,5 SAY "NO HAY MAS LIBROS QUE CONSULTAR"
               @ 19,40 SAY "PULSE <ENTER> PARA REGRESAR"
               WAIT""
               EXIT
            ENDIF
            IF TEMA = TEM
              @ X,4 SAY "ÉCODIGO: "
              @ X,12 SAY CODIGO
              @ X+1,4 SAY "È"
              @ X+1,5 SAY TITULO
              X=X+2
              IF X>17
                 X=8
                 @ 19,40 SAY "PULSE <ENTER> PARA CONTINUAR"
                 WAIT""
                 @ 8,4 CLEAR TO 19,76
              ENDIF
            ENDIF
           SKIP

           ENDDO