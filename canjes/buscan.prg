SAVE SCREEN TO PANTA5
DO WHILE .T.
SET COLOR TO W/N
@ 6,43 CLEAR TO 20,63
SET COLOR TO W+/B,GR+/R
@ 5,42 CLEAR TO 19,62
@ 5,42 TO 19,62 
@ 22,5 CLEAR TO 24,74
@ 22,5 TO 24,74
OPC=0
@ 6,44 PROMPT 'POR TIPO:DONACION' MESSAGE 'LISTADO DE TODAS LAS DONACIONES REALIZADAS'
@ 7,44 PROMPT 'POR TIPO:CANJE' MESSAGE 'LISTADO DE TODAS LAS OPERACIONES DE CANJE DE LIBROS'
@ 8,42 SAY '쳐컴컴컴컴컴컴컴컴컴�'
@ 9,44 PROMPT 'POR CLASE:LIBRO' MESSAGE 'LISTA DE LOS LIBROS INVOLUCRADOS EN LAS OPERACIONES'
@ 10,44 PROMPT 'POR CLASE:REVISTA' MESSAGE 'LISTA DE LAS REVISTAS INVOLUCRADAS EN LAS OPERACIONES'
@ 11,44 PROMPT 'POR CLASE:TRABAJO' MESSAGE 'LISTA DE LOS TRABAJOS INVOLUCRADOS EN LAS OPERACIONES'
@ 12,42 SAY '쳐컴컴컴컴컴컴컴컴컴�'
@ 13,44 PROMPT 'POR OPER:RECIBIDO' MESSAGE 'LISTA DE LIBROS RECIBIDOS DE OTRAS INSTITUCIONES'
@ 14,44 PROMPT 'POR OPER:ENVIO' MESSAGE 'LISTA DE LIBROS ENVIADOS A OTRAS INSTITUCIONES'
@ 15,42 SAY '쳐컴컴컴컴컴컴컴컴컴�'
@ 16,44 PROMPT 'POR TITULO' MESSAGE 'MUESTRA LOS MOVIMIENTOS REALIZADOS POR UN LIBRO ESPEC�FICO'
@ 17,42 SAY '쳐컴컴컴컴컴컴컴컴컴�'
@ 18,44 PROMPT 'POR N� COMUNICADO'  MESSAGE '>>>>>>>  NO ESTA EN SERVICIO  <<<<<<<<'
MENU TO OPC
IF LASTKEY()=27
     SET COLOR TO N/W
     @ 5,42 CLEAR TO 19,62
     SET COLOR TO W+/B,GR+/R
     EXIT
ENDIF
   DO CASE
      CASE OPC=1
           TIP='DONACION'
           DO CANTIPO
      CASE OPC=2
           TIP='CANJE'
           DO CANTIPO
      CASE OPC=3
           CLA='LIBRO'
           DO CANCLASE
      CASE OPC=4
           CLA='REVISTA'
           DO CANCLASE
      CASE OPC=5
           CLA='TRABAJO' 
           DO CANCLASE
      CASE OPC=6
           OPE='RECIBO'
           DO CANOPERA
      CASE OPC=7
           OPE='ENVIO'
           DO CANOPERA
      CASE OPC=8
           DO BUSTITUL
      CASE OPC=9
   ENDCASE
ENDDO

RESTORE SCREEN FROM PANTA5
