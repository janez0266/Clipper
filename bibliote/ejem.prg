SET TALK OFF
SET WRAP ON
SET DELE ON
SET DATE FREN
SET COLOR TO +W/N
DO WHILE .T.
   @ 1,1 CLEAR TO 24,79
   @ 1,1 TO 24,79 DOUBLE
   @ 2,18 TO 4,55
   @ 3,20 SAY 'MENU    PRINCIPAL'
   @ 7,19 TO 20,54
   @ 10,23 PROMPT ' PRUEBA 1'
   @ 12,23 PROMPT 'PRUEBA 2'
   @ 14,23 PROMPT 'PRUEBA 3'
   @ 16,23 PROMPT 'SALIR'
   MENU TO OPCION
   DO CASE
      CASE OPCION = 1
           SAVE SCREEN
           SET COLOR TO N/W
           @ 10,10 CLEAR TO 14,60
           @ 10,10 TO 14,60 DOUBLE
           @ 12,12 SAY 'PRUEBA     1'
           SET COLOR TO
           WAIT""
           RESTORE SCREEN

      CASE OPCION = 2
           SAVE SCREEN
           SET COLOR TO N/W
           @ 12,12  TO 16,60
           @ 14,14 SAY 'PRUEBA 2'
           SET COLOR TO
           WAIT
           RESTORE SCREEN
      CASE OPCION = 3
           @ 15,15 CLEAR TO 20,20
           @ 15,15 TO 20,65 DOUBLE
           @ 16,16 SAY 'PRUEBA 3'
           WAIT""
           EXIT

     ENDCASE

ENDDO



