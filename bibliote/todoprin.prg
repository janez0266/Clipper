USE BIBLIO3 INDEX BIBLIO3
SET COLOR TO GR+/BR
@ 11,11 CLEAR TO 15,65
SET COLOR TO GR+/R,W+/B
@ 10,10 CLEAR TO 14,64
@ 10,10 TO 14,64 DOUBLE
*RESP="N"
*@ 12,12 SAY "ESTA SEGURO QUE QUIERE TODA LA LISTA? S/N"
*@ 12,55 GET RESP PICTURE "!@"
*READ
*IF LASTKEY()=27
*    SET COLOR TO W+/B,GR/R
*ENDIF
*IF RESP = "S"
 SET DEVICE TO PRIN
   P=1
   X=7 

  
@ 0,0 SAY CHR(18)
@ 0,1 SAY CHR(27)+CHR(69)
@ 0,5 SAY "PAGINA:"
@ 0,13 SAY P PICTURE "99" 
@ 0,65 SAY DATE()
@ 1,00 SAY CHR(27)+CHR(87)+CHR(49)
@ 1,01 SAY "             C. E. E. L. A."
@ 2,01 SAY "         SISTEMA DE BIBLIOTECA"
@ 3,00 SAY CHR(27)+CHR(87)+CHR(48)
@ 3,01 SAY "                     UNIVERSIDAD DEL ZULIA. GRANO DE ORO."
@ 4,20 SAY "LISTADO GENERAL DE LIBROS"
@ 5,5 SAY "-----------------------------------------------------------------------"
@ 6,1 SAY "CODIGO"
@ 6,15 SAY "TITULO"
@ 6,53 SAY "AUTOR"
@ 6,69 SAY "LUGAR"
@ 6,75 SAY "CANT"
@ 7,0 SAY CHR(27)+CHR(70)

   GO TOP
   Y=1
   DO WHILE .T.
      Y=Y+1
      IF EOF()
         @ X,3 SAY CHR(18)
         @ X,4 SAY CHR(27)+CHR(80)
         @ X,20 SAY "*  *  *  FIN DE LA LISTA  *  *  *"
         @ X+1,1 SAY "-01 ANTROPOLOGIA       -02 ECONOMIA    -03 FILOSOFIA       -04 SOCIOLOGIA"
         @ X+2,1 SAY "-05 CIENCIAS POLITICAS -06 EDUCACION   -07 CIENCIA Y TEC.  -08 OBRAS GENERALES"
         @ X+3,1 SAY "-09 HISTORIA           -10 LITERATURA  -11 URBANISMO       -12 CINE"
         @ X+4,1 SAY "-40 ANUARIOS  -50 BOLETINES   -60 TRABAJOS     -70 INFORMES   -90 DOCUMENTOS"
         EJECT
         EXIT
      ENDIF
      @ X,0 SAY CHR(27)+CHR(70)
      @ X,1 SAY CHR(15)
      @ X,3 SAY CODIGO
      @ X,13 SAY TITULO PICTURE "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX"
      @ X,86 SAY AUTOR_NOM PICTURE "XXXXXXXXXXXXXXX"
      @ X,104 SAY AUTOR_APEL PICTURE "XXXXXXXXXXXXXXX"
      @ X,121 SAY UBICACION PICTURE "XXXXX"
      @ X,131 SAY CANTIDAD
      @ X,132 SAY CHR(18)
      X=X+1
      IF X=60
         X=7
         EJECT
         P=P+1
         @ 0,0 SAY CHR(18)
@ 0,1 SAY CHR(27)+CHR(69)
@ 0,5 SAY "PAGINA:"
@ 0,13 SAY P 
@ 0,65 SAY DATE()
@ 1,00 SAY CHR(27)+CHR(87)+CHR(49)
@ 1,01 SAY "             C. E. E. L. A."
@ 2,01 SAY "         SISTEMA DE BIBLIOTECA"
@ 3,00 SAY CHR(27)+CHR(87)+CHR(48)
@ 3,01 SAY "                     UNIVERSIDAD DEL ZULIA. GRANO DE ORO."
@ 4,20 SAY "LISTADO GENERAL DE LIBROS"
@ 5,5 SAY "-----------------------------------------------------------------------"
@ 6,1 SAY "CODIGO"
@ 6,15 SAY "TITULO"
@ 6,53 SAY "AUTOR"
@ 6,69 SAY "LUGAR"
@ 6,75 SAY "CANT"
@ 7,0 SAY CHR(27)+CHR(70)
       
       ENDIF
       SKIP
    ENDDO
   SET DEVICE TO SCREEN
*ENDIF
USE

