CLEAR

set color to +w
   @ 0,0 TO 17,79
   DO PAUSA
   @ 2,16 SAY "    ษอออออป ษอออออป  ษอออออป ษอป     ษออออออป"
   @ 3,16 SAY "    บ ษอออผ บ ษอออผ  บ ษอออผ บ บ     บ ษออป บ"
   @ 4,16 SAY "    บ บ     บ ศอออป  บ ศอออป บ บ     บ ศออผ บ"
   @ 5,16 SAY "    บ บ     บ ษอออผ  บ ษอออผ บ บ     บ ษออป บ"
   @ 6,16 SAY "    บ ศอออป บ ศอออป  บ ศอออป บ ศอออป บ บ  บ บ"
   @ 7,16 SAY "    ศอออออผ ศอออออผ  ศอออออผ ศอออออผ ศอผ  ศอผ"
   DO PAUSA
   @ 9,17 SAY "ฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐ"
   @ 10,17 SAY "ฐฐ                                           ฐฐ"
   @ 11,17 SAY "ฐฐ                                           ฐฐ"
   @ 12,17 SAY "ฐฐ                                           ฐฐ"
   @ 13,17 SAY "ฐฐ                                           ฐฐ"
   @ 14,17 SAY "ฐฐ                                           ฐฐ"
   @ 15,17 SAY "ฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐ"
   DO PAUSA
   @ 10,21 SAY "C E N T R O    E X P E R I M E N T A L"
   @ 12,21 SAY "D E   E S T U D I O S  "
   @ 14,21 SAY "L A T I N O A M E R I C A N O S"
   DO PAUSA
   @ 18,10 to 22,68
   DO PAUSA
   @ 20,12 say 'PARA ENTRAR AL SERVICIO DE BIBLIOTECA, ESCRIBA <BIBLIO>'
   @ 24,32 SAY ' '

   SET COLOR TO


PROCEDURE PAUSA
   L=1
   DO WHILE L<500
      L=L+1
   ENDDO
   RETURN