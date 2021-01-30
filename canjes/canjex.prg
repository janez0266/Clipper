SET KEY 28 TO AYUDA
SET KEY -1 TO DIRECC
SET KEY -5 TO CANJES
SET SAFETY OFF
SET DATE FRENCH
SET WRAP ON
SET SCORE OFF
SET TALK OFF
SET MESSAGE TO 23 CENTER
SET KEY -9 TO SALE
SW=0
USE IDENTIFI INDEX IDENT
REINDEX
DO WHILE .T.
DO MESA
SET COLOR TO W/N
@ 6,6 CLEAR TO 19,26
SET COLOR TO W+/B,GR+/R
@ 5,5 CLEAR TO 18,25
@ 5,5 TO 18,25 
@ 22,5 CLEAR TO 24,74
@ 22,5 TO 24,74
@ 6,7 PROMPT '  BUSQUEDA  ' MESSAGE 'BUSCA UNA OPERACION DE CANJE'
@ 7,5 SAY '√ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ¥'
@ 8,7 PROMPT '  INCLUIR   ' MESSAGE 'INCLUYE DATOS DE UNA PERSONA Y/O DE UN CANJE'
@ 9,5 SAY '√ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ¥'
@ 10,7 PROMPT '  LISTADOS  ' MESSAGE 'LISTA TODOS LOS NOMBRES Y DIRECCIONES'
@ 11,5 SAY '√ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ¥'
@ 12,7 PROMPT ' PROYECCIONES' MESSAGE 'DATOS ESTADISTICOS DE MOVIMIENTOS DE CANJES'
@ 13,5 SAY '√ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ¥'
@ 17,7 PROMPT '   SALIR    ' MESSAGE 'ABANDONA EL SISTEMA'
MENU TO OPC
  DO CASE
      CASE OPC = 1
         DO CANBUS      
      CASE OPC = 2
         DO CANINCLU
      CASE OPC = 3
         DO CANLISTA
      CASE OPC = 4
         DO ESTADIST
      CASE OPC = 5
          SET COLOR TO
          CLEAR
          USE
          DO SALIR
          EXIT
  ENDCASE
ENDDO






PROCEDURE MESA
CLEAR
SET COLOR TO N/W
@ 0,0 CLEAR TO 24,79
@ 1,1 SAY 'SISTEMA DE CANJES ---------------------------------------JANEZ0266'
SET COLOR TO GR+/B
@ 0,0 CLEAR TO 0,79
@ 0,5 SAY '<F1> AYUDA  <F2>DIRECCIONES          <F6>CANJES                <F10>SALIR'
SET COLOR TO G+/B
@ 0,5 SAY '<F1>'
@ 0,17 SAY '<F2>'

@ 0,68 SAY '<F10>'
IF SW=0

@ 5,13 SAY '∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞' 
@ 6,13 SAY '∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞' 
@ 7,13 SAY '±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±' 
@ 8,13 SAY '±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±' 
@ 9,13 SAY '≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤' 
@ 10,13 SAY '€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€'

SET COLOR TO B+/W
@ 12,13 SAY '∞∞∞∞∞∞∞∞  ∞∞∞∞∞∞∞∞  ∞∞    ∞∞        ∞∞  ∞∞∞∞∞∞∞∞'
DO TIEMPO
@ 13,13 SAY '∞∞        ∞∞    ∞∞  ∞∞∞‹  ∞∞        ∞∞  ∞∞      '
DO TIEMPO
@ 14,13 SAY '∞∞        ∞∞∞∞∞∞∞∞  ∞∞ﬂ∞∞‹∞∞        ∞∞  ∞∞∞∞∞∞∞∞'
DO TIEMPO
@ 15,13 SAY '∞∞        ∞∞    ∞∞  ∞∞  ﬂ∞∞∞  ∞∞    ∞∞  ∞∞      ' 
DO TIEMPO
@ 16,13 SAY '∞∞∞∞∞∞∞∞  ∞∞    ∞∞  ∞∞    ∞∞  ∞∞∞∞∞∞∞∞  ∞∞∞∞∞∞∞∞'
DO TIEMPO
SET COLOR TO BR+/W
@ 12,13 SAY '∞∞∞∞∞∞∞∞  ∞∞∞∞∞∞∞∞  ∞∞    ∞∞        ∞∞  ∞∞∞∞∞∞∞∞'
DO TIEMPO
@ 13,13 SAY '∞∞        ∞∞    ∞∞  ∞∞∞‹  ∞∞        ∞∞  ∞∞      '
DO TIEMPO
@ 14,13 SAY '∞∞        ∞∞∞∞∞∞∞∞  ∞∞ﬂ∞∞‹∞∞        ∞∞  ∞∞∞∞∞∞∞∞'
DO TIEMPO
@ 15,13 SAY '∞∞        ∞∞    ∞∞  ∞∞  ﬂ∞∞∞  ∞∞    ∞∞  ∞∞      ' 
DO TIEMPO
@ 16,13 SAY '∞∞∞∞∞∞∞∞  ∞∞    ∞∞  ∞∞    ∞∞  ∞∞∞∞∞∞∞∞  ∞∞∞∞∞∞∞∞'
DO TIEMPO

SET COLOR TO GR+/W
@ 12,13 SAY '∞∞∞∞∞∞∞∞  ∞∞∞∞∞∞∞∞  ∞∞    ∞∞        ∞∞  ∞∞∞∞∞∞∞∞'
DO TIEMPO
@ 13,13 SAY '∞∞        ∞∞    ∞∞  ∞∞∞‹  ∞∞        ∞∞  ∞∞      '
DO TIEMPO
@ 14,13 SAY '∞∞        ∞∞∞∞∞∞∞∞  ∞∞ﬂ∞∞‹∞∞        ∞∞  ∞∞∞∞∞∞∞∞'
DO TIEMPO
@ 15,13 SAY '∞∞        ∞∞    ∞∞  ∞∞  ﬂ∞∞∞  ∞∞    ∞∞  ∞∞      ' 
DO TIEMPO
@ 16,13 SAY '∞∞∞∞∞∞∞∞  ∞∞    ∞∞  ∞∞    ∞∞  ∞∞∞∞∞∞∞∞  ∞∞∞∞∞∞∞∞'
DO TIEMPO

SET COLOR TO G+/W
@ 12,13 SAY '±±±±±±±±  ±±±±±±±±  ±±    ±±        ±±  ±±±±±±±±'
DO TIEMPO
@ 13,13 SAY '±±        ±±    ±±  ±±±‹  ±±        ±±  ±±      '
DO TIEMPO
@ 14,13 SAY '±±        ±±±±±±±±  ±±ﬂ±±‹±±        ±±  ±±±±±±±±'
DO TIEMPO
@ 15,13 SAY '±±        ±±    ±±  ±±  ﬂ±±±  ±±    ±±  ±±      ' 
DO TIEMPO
@ 16,13 SAY '±±±±±±±±  ±±    ±±  ±±    ±±  ±±±±±±±±  ±±±±±±±±'
DO TIEMPO

SET COLOR TO BG+/W
@ 12,13 SAY '±±±±±±±±  ±±±±±±±±  ±±    ±±        ±±  ±±±±±±±±'
DO TIEMPO
@ 13,13 SAY '±±        ±±    ±±  ±±±‹  ±±        ±±  ±±      '
DO TIEMPO
@ 14,13 SAY '±±        ±±±±±±±±  ±±ﬂ±±‹±±        ±±  ±±±±±±±±'
DO TIEMPO
@ 15,13 SAY '±±        ±±    ±±  ±±  ﬂ±±±  ±±    ±±  ±±      ' 
DO TIEMPO
@ 16,13 SAY '±±±±±±±±  ±±    ±±  ±±    ±±  ±±±±±±±±  ±±±±±±±±'
DO TIEMPO

SET COLOR TO GR+/W
@ 12,13 SAY '±±±±±±±±  ±±±±±±±±  ±±    ±±        ±±  ±±±±±±±±'
DO TIEMPO
@ 13,13 SAY '±±        ±±    ±±  ±±±‹  ±±        ±±  ±±      '
DO TIEMPO
@ 14,13 SAY '±±        ±±±±±±±±  ±±ﬂ±±‹±±        ±±  ±±±±±±±±'
DO TIEMPO
@ 15,13 SAY '±±        ±±    ±±  ±±  ﬂ±±±  ±±    ±±  ±±      ' 
DO TIEMPO
@ 16,13 SAY '±±±±±±±±  ±±    ±±  ±±    ±±  ±±±±±±±±  ±±±±±±±±'
DO TIEMPO

SET COLOR TO GR/W
@ 12,13 SAY '€€€€€€€€  €€€€€€€€  €€    €€        €€  €€€€€€€€'
DO TIEMPO
@ 13,13 SAY '€€        €€    €€  €€€‹  €€        €€  €€      '
DO TIEMPO
@ 14,13 SAY '€€        €€€€€€€€  €€ﬂ€€‹€€        €€  €€€€€€€€'
DO TIEMPO
@ 15,13 SAY '€€        €€    €€  €€  ﬂ€€€  €€    €€  €€      ' 
DO TIEMPO
@ 16,13 SAY '€€€€€€€€  €€    €€  €€    €€  €€€€€€€€  €€€€€€€€'

SET COLOR TO BR+/W
@ 12,13 SAY '€€€€€€€€  €€€€€€€€  €€    €€        €€  €€€€€€€€'
DO TIEMPO
@ 13,13 SAY '€€        €€    €€  €€€‹  €€        €€  €€      '
DO TIEMPO
@ 14,13 SAY '€€        €€€€€€€€  €€ﬂ€€‹€€        €€  €€€€€€€€'
DO TIEMPO
@ 15,13 SAY '€€        €€    €€  €€  ﬂ€€€  €€    €€  €€      ' 
DO TIEMPO
@ 16,13 SAY '€€€€€€€€  €€    €€  €€    €€  €€€€€€€€  €€€€€€€€'

SET COLOR TO R+/W
@ 12,13 SAY '€€€€€€€€  €€€€€€€€  €€    €€        €€  €€€€€€€€'
DO TIEMPO
@ 13,13 SAY '€€        €€    €€  €€€‹  €€        €€  €€      '
DO TIEMPO
@ 14,13 SAY '€€        €€€€€€€€  €€ﬂ€€‹€€        €€  €€€€€€€€'
DO TIEMPO
@ 15,13 SAY '€€        €€    €€  €€  ﬂ€€€  €€    €€  €€      ' 
DO TIEMPO
@ 16,13 SAY '€€€€€€€€  €€    €€  €€    €€  €€€€€€€€  €€€€€€€€'
DO TIEMPO
SET COLOR TO B+/W
@ 18,13 SAY 'BIENVENIDOS AL SISTEMA DE CANJES DEL C.E.E.L.A.'
@ 20,15 SAY 'PRESIONE <ENTER> PARA UTILIZAR EL SISTEMA'
*@ 22,15 SAY 'JAVIER..... NO TE DUERMAS....ESTA VERSION ESTA MEJORADA'
SET COLOR TO G+/W
@ 20,24 SAY '<ENTER>'
@ 23,40 SAY 'REALIZADO POR: J.C.A.'
WAIT''

ENDIF
SW=1
RETURN


PROCEDURE TIEMPO
  L=1
  DO WHILE L<300
    L=L+1
  ENDDO
RETURN



PROCEDURE SALE
SAVE SCREEN TO PANTA3
COLOR=SETCOLOR()
SET COLOR TO GR+/R,W+/N
DO WHILE .T.
@ 10,10 CLEAR TO 14,50
@ 10,10 TO 14,50
@ 12,12 SAY 'ESTA SEGURO QUE QUIERE SALIR?  N/S'
@ 12,43 PROMPT 'N'
@ 12,45 PROMPT 'S'
MENU TO OPC
   DO CASE
       CASE OPC=1
         
           EXIT
       CASE OPC=2
           USE
           RESTORE SCREEN FROM PANTA3
           BREAK
   ENDCASE
ENDDO
SET COLOR TO &COLOR
RESTORE SCREEN FROM PANTA3
RETURN


PROCEDURE ENCAB

@ 0,0 SAY CHR(18)
@ 0,1 SAY CHR(27)+CHR(69)
@ 0,5 SAY "PAGINA:"
@ 0,13 SAY P
@ 0,65 SAY DATE()
@ 1,00 SAY CHR(27)+CHR(87)+CHR(49)
@ 1,01 SAY "             C. E. E. L. A."
@ 2,01 SAY "           SISTEMA DE CANJES"
@ 3,00 SAY CHR(27)+CHR(87)+CHR(48)
@ 3,01 SAY "                     UNIVERSIDAD DEL ZULIA. GRANO DE ORO."
@ 4,20 SAY MENSAJE
@ 5,5 SAY "-----------------------------------------------------------------------"
@ 6,0 SAY CHR(27)+CHR(70) 
RETURN


PROCEDURE AYUDA
COLOR1=SETCOLOR()
SAVE SCREEN TO HELP
SET KEY 28 TO
SET KEY -1 TO
SET KEY -2 TO
DO WHILE .T.
SET COLOR TO R/W
@ 0,0 CLEAR TO 24,79
@ 4,10 SAY 'El SISTEMA DE CANJES se encarga de manejar informaci¢n sobre canjes delibros entre el CEELA y otras instituciones.'
@ 7,10 say 'Ud podr† saber los movimientos de intercambio y canjes realizados en  el sistema. Podr† saber quiÇn envi¢ libros, a quiÇn se le envi¢, cu†ndo es canjeo donaci¢n, los titulos de los  libros o  revistas que  intervienen en el canje, etc.' 
@ 12,10 SAY 'Para m†s detalles  de un  t¢pico en la  ayuda, seleccione de la barra superior la opci¢n  < MENÈ >, o si desea  aprender a usar el SISTEMA seleccione < TUTORIAL >.'   
SET COLOR TO W+/B,GR+/R
@ 0,0 CLEAR TO 0,79
OPC=1
@ 0,5 PROMPT '< MENU >'
@ 0,15 PROMPT '< TUTORIAL >'
@ 0,29 PROMPT '< SALIR >'
MENU TO OPC
   DO CASE
     CASE OPC=1
         DO MENU
     CASE OPC=2
         DO TUTORIAL
     CASE OPC=3
         EXIT
   ENDCASE
ENDDO

RESTORE SCREEN FROM HELP
SET COLOR TO &COLOR1
SET KEY 28 TO AYUDA
SET KEY -1 TO DIRECC
SET KEY -2 TO CANJES
RETURN

PROCEDURE MENU
SAVE SCREEN TO HELP1
SET COLOR TO N/W
@ 1,0 CLEAR TO 24,79

WAIT
RESTORE SCREEN FROM HELP1
RETURN

PROCEDURE TUTORIAL
SAVE SCREEN TO HELP2
@ 10,10 SAY ' DISCULPE, EL TUTORIAL NO ESTA LISTO...'
WAIT
RESTORE SCREEN FROM HELP2
RETURN



PROCEDURE SALIR
           USE
           SET COLOR TO R+/B
           L=1
           DO WHILE L<=200
              L=L+1
           ENDDO
           @ 1,0 CLEAR TO 1,79
           @ 1,0 CLEAR TO 24,00
           @ 1,79 CLEAR TO 24,79
           @ 24,00 CLEAR TO 24,79
           @ 2,2 TO 23,77 DOUBLE
           L=1
           DO WHILE L<=200
              L=L+1
           ENDDO
           @ 2,2 CLEAR TO 23,03
           @ 2,2 CLEAR TO 2,77
           @ 2,77 CLEAR TO 23,77
           @ 23,02 CLEAR TO 23,77
           @ 3,4 TO 22,75 DOUBLE
           L=1
           DO WHILE L<=200
              L=L+1
           ENDDO
           @ 3,4 CLEAR TO 22,05
           @ 3,4 CLEAR TO 3,75
           @ 3,75 CLEAR TO 22,75
           @ 22,04 CLEAR TO 22,75
           @ 4,6 TO 21,73 DOUBLE
           L=1
           DO WHILE L<=200
              L=L+1
           ENDDO
           @ 4,6 CLEAR TO 21,06
           @ 4,6 CLEAR TO 4,73
           @ 4,73 CLEAR TO 21,73
           @ 21,06 CLEAR TO 21,73
           @ 5,8 TO 20,71 DOUBLE
           L=1
           DO WHILE L<=200
              L=L+1
           ENDDO
           @ 5,8 CLEAR TO 20,08
           @ 5,8 CLEAR TO 5,71
           @ 5,71 CLEAR TO 20,71
           @ 20,08 CLEAR TO 20,71
           @ 6,10 TO 19,69 DOUBLE
           L=1
           DO WHILE L<=200
              L=L+1
           ENDDO
           @ 6,10 CLEAR TO 19,10
           @ 6,10 CLEAR TO 6,69
           @ 6,69 CLEAR TO 19,69
           @ 19,10 CLEAR TO 19,69
           @ 7,12 TO 18,67 DOUBLE
           L=1
           DO WHILE L<=200
              L=L+1
           ENDDO
           @ 7,12 CLEAR TO 18,12
           @ 7,12 CLEAR TO 7,67
           @ 7,67 CLEAR TO 18,67
           @ 18,12 CLEAR TO 18,67
           @ 8,14 TO 17,65 DOUBLE
           L=1
           DO WHILE L<=200
              L=L+1
           ENDDO
           @ 8,14 CLEAR TO 17,14
           @ 8,14 CLEAR TO 8,65
           @ 8,65 CLEAR TO 17,65
           @ 17,14 CLEAR TO 17,65
           @ 9,16 TO 16,63 DOUBLE
           L=1
           DO WHILE L<=200
              L=L+1
           ENDDO
           @ 9,16 CLEAR TO 16,16
           @ 9,16 CLEAR TO 9,63
           @ 9,63 CLEAR TO 16,63
           @ 16,16 CLEAR TO 16,63
           @ 10,18 TO 15,61 DOUBLE
           L=1
           DO WHILE L<=200
              L=L+1
           ENDDO
           @ 10,18 CLEAR TO 15,18
           @ 10,18 CLEAR TO 10,61
           @ 10,61 CLEAR TO 15,61
           @ 15,18 CLEAR TO 15,61
           @ 11,20 TO 14,59 DOUBLE
           L=1
           DO WHILE L<=200
              L=L+1
           ENDDO
           @ 11,20 CLEAR TO 14,20
           @ 11,20 CLEAR TO 11,59
           @ 11,59 CLEAR TO 14,59
           @ 14,20 CLEAR TO 14,59
           @ 12,22 TO 13,57 DOUBLE
           L=1
           DO WHILE L<=200
              L=L+1
           ENDDO
           @ 12,22 CLEAR TO 13,57
           @ 11,20 TO 14,59 DOUBLE
           SET COLOR TO *W/N
           @ 12,27 SAY "≠GRACIAS POR UTILIZAR EL"
           @ 13,29 SAY "SISTEMA DE  CANJES !"
           L=1
           DO WHILE L<=5000
              L=L+1
           ENDDO
           SET COLOR TO R+/N
           CLEAR
           @ 9,17 SAY "     ÕÕ    ÕÕ  Õ  Õ ÕÕ   ÕÕ    Õ   Õ Õ   Õ"
           @ 10,17 SAY "…Õ     ÕÕÕR  ÕÕI A Õ  Õ Õ  I Õ ZÕ    RÕ Õ  ª"
           @ 11,17 SAY "      ≠ G     C    PO  U    L     A"
           @ 12,17 SAY "  ∫        A     S   R  T     I       EL  ∫"
           @ 13,17 SAY " ∫            TE   D    CA   N J    ES       ∫"
           @ 14,17 SAY "        S   S       E   EN T R   O  !"
           @ 15,17 SAY "  »    ÕÕ I ÕÕÕ MAÕ  Õ      Õ Õ Õ    ÕÕ   ÕÕº"
           @ 16,17 SAY "    ÕÕÕ  ÕÕÕ       ÕÕ   Õ      Õ Õ ÕÕ"
           X=1
           FOR X=1 TO 500
           NEXT X
           @ 6,12 SAY "                Õ      Õ       Õ    Õ"
           @ 7,12 SAY "       Õ Õ       Õ  Õ     Õ   N     ZÕ      RÕ   Õ"
           @ 8,12 SAY " …Õ        ÕÕ           PÕ    Õ         Õ Õ     Õ    ª"
           @ 9,12 SAY "                                I Õ        A"
           @ 10,12 SAY "       ≠      ÕR  ÕÕI A Õ  Õ Õ        L            ∫"
           @ 11,12 SAY "  ∫        G       C     O  U    A            E"
           @ 12,12 SAY "       A              S   R              I        L"
           @ 13,12 SAY "           T     E      D  I   T     I                ∫"
           @ 14,12 SAY "∫                        E                   !"
           @ 15,12 SAY "            ÕÕ I Õ Õ M Õ     V     Õ     O     Õ    º"
           @ 16,12 SAY "          S    Õ        Õ    Õ   R      ÕÕ        ÕÕ "
           @ 17,12 SAY "   »     ÕÕ      S  Õ A    E  N     Õ  "
           @ 18,12 SAY "     Õ            Õ                   Õ     Õ"
           @ 19,12 SAY "              Õ          Õ      T"
           @ 20,12 SAY "                        Õ"
           X=1
           FOR X=1 TO 500
           NEXT X
           @ 4,8 SAY "                   Õ          Õ         Õ     Õ           Õ"
           @ 5,8 SAY "      Õ                    Õ        Õ       Õ       Õ"
           @ 6,8 SAY "                     Õ     Õ      Õ                              R      ª"
           @ 7,8 SAY "   Õ    ≠     Õ         Õ         N     ZÕ"
           @ 8,8 SAY "…            G     R        P     Õ                      Õ"
           @ 9,8 SAY "                                    I"
           @ 10,8 SAY "      A                   A               L         A    ∫"
           @ 11,8 SAY "  ∫           C     I        O       A"
           @ 12,8 SAY "                                                            ∫"
           @ 13,8 SAY "           E          S     D      T     I       I     E"
           @ 14,8 SAY "    ∫"
           @ 15,8 SAY "                 Õ I             V     Õ                 L    º"
           @ 16,8 SAY "         T     A                     R      Õ       !Õ"
           @ 17,8 SAY " »            Õ         Õ M             Õ                Õ"
           @ 18,8 SAY "                                              Õ  O           Õ"
           @ 19,8 SAY "           S       S         Õ  N   T"
           @ 20,8 SAY "       Õ     Õ           E  Õ             Õ         Õ"
           @ 21,8 SAY "              Õ    Õ"
           X=1
           FOR X=1 TO 500
           NEXT X
           CLEAR
           @ 2,2 SAY "                                  Õ           Õ            Õ"
           @ 3,2 SAY "        Õ"
           @ 4,2 SAY "              Õ        Õ     Õ            Õ    Z   Õ                Õ"
           @ 5,2 SAY "    Õ                            Õ     N"
           @ 6,2 SAY "           ≠       G            P                           R           ª"
           @ 7,2 SAY "                                           I      L"
           @ 8,2 SAY "…       A         R"
           @ 9,2 SAY "                          I                                        Õ"
           @ 10,2 SAY "                                A                 I       A"
           @ 11,2 SAY "    ∫           E                          A                         ∫"
           @ 12,2 SAY ""
           @ 13,2 SAY "                                                       I       E"
           @ 14,2 SAY "       ∫"
           @ 15,2 SAY "                         I                                             ∫"
           @ 16,2 SAY "               T"
           @ 17,2 SAY "                                M                   R            L"
           @ 18,2 SAY "   »                                                                     º"
           @ 19,2 SAY "                 S       S                T   Õ           !"
           @ 20,2 SAY "                               E                    Õ              Õ"
           @ 21,2 SAY "        Õ                              Õ"
           @ 22,2 SAY "                     Õ            Õ                         Õ"
           @ 23,2 SAY "               Õ            Õ                Õ"
           X=1
           FOR X=1 TO 500
           NEXT X
           CLEAR
           @ 2,6 SAY "                              Õ           Õ            Õ"
           @ 3,6 SAY "    Õ"
           @ 4,6 SAY "          Õ              Õ                 Z                    Õ"
           @ 6,6 SAY "               G            P                                       ª"
           @ 7,6 SAY "                                       I"
           @ 8,6 SAY "    A"
           @ 10,6 SAY "                            A                         A"
           @ 11,6 SAY "∫                                      A"
           @ 12,6 SAY "                                                   I"
           @ 13,6 SAY "   ∫"
           @ 14,6 SAY "                                                                   ∫"
           @ 16,6 SAY "                            M                                L"
           @ 17,6 SAY "                                                                     º"
           @ 18,6 SAY "             S                        T"
           @ 20,6 SAY "    Õ"
           @ 21,6 SAY "                                                        Õ"
           @ 22,6 SAY "           Õ            Õ                Õ"
           X=1
           FOR X=1 TO 500
           NEXT X
           CLEAR
*           RUN CD\
*           CLEAR
           QUIT

