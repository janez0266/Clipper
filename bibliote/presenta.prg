CLEAR

set color to +w
   @ 0,0 TO 17,79
   DO PAUSA
   @ 2,16 SAY "    �����ͻ �����ͻ  �����ͻ �ͻ     ������ͻ"
   @ 3,16 SAY "    � ���ͼ � ���ͼ  � ���ͼ � �     � ��ͻ �"
   @ 4,16 SAY "    � �     � ���ͻ  � ���ͻ � �     � ��ͼ �"
   @ 5,16 SAY "    � �     � ���ͼ  � ���ͼ � �     � ��ͻ �"
   @ 6,16 SAY "    � ���ͻ � ���ͻ  � ���ͻ � ���ͻ � �  � �"
   @ 7,16 SAY "    �����ͼ �����ͼ  �����ͼ �����ͼ �ͼ  �ͼ"
   DO PAUSA
   @ 9,17 SAY "�����������������������������������������������"
   @ 10,17 SAY "��                                           ��"
   @ 11,17 SAY "��                                           ��"
   @ 12,17 SAY "��                                           ��"
   @ 13,17 SAY "��                                           ��"
   @ 14,17 SAY "��                                           ��"
   @ 15,17 SAY "�����������������������������������������������"
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