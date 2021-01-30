SET DATE FRENCH
SET TALK OFF
SET SCORE OFF
*DO INICIO
SET KEY 28 TO ACTUALIZA
SET KEY -1 TO AYUDA
SET KEY -2 TO IMPRIME
SET KEY -3 TO LISTA
SET KEY -4 TO PROFE
SET KEY -5 TO CODIGOS
SET KEY -7 TO SALE
SET KEY -8 TO LISTASEL
SET KEY -9 TO PAPEL
SET WRAP ON
SELE A
USE PROFESO
SELE B
USE BIBLIO3 INDEX LIBRO
REINDEX
SET MESSAGE TO 21 CENTER
DO WHILE .T.
SET KEY -3 TO LISTA
STORE 1 TO SEMAFORO
STORE 0 TO IMPRIME
DO FONDO
STORE 0 TO AYU
DO TIEMPO3
@ 9,16 CLEAR TO 12,18
@ 9,16  TO 12,18 DOUBLE
DO TIEMPO3
@ 8,14 CLEAR TO 13,20
@ 8,14  TO 13,20 DOUBLE
DO TIEMPO3
@ 7,12 CLEAR TO 14,22
@ 7,12  TO 14,22 DOUBLE
DO TIEMPO3
@ 6,9 CLEAR TO 15,25
@ 6,9  TO 15,25 DOUBLE
DO TIEMPO3
@ 5,6 CLEAR TO 16,28
@ 5,6  TO 16,28 DOUBLE
DO TIEMPO3
@ 4,3 CLEAR TO 17,31
@ 4,3  TO 17,31 DOUBLE
DO TIEMPO3
SET COLOR TO BG+/G
@ 24,0 CLEAR TO 24,79
@ 24,2 SAY '<F9>LISTA PERSONALIZADA  <F10>IMPRIME UNA LINEA'
SET COLOR TO W+/B,GR+/R
@ 5,4 SAY "ÄÄÄÄÄÄÄMENU PRINCIPALÄÄÄÄÄÄ"
@ 7,6 PROMPT "> BUSQUEDA DE LIBROS  <" MESSAGE  'UBICA UN LIBRO EN LA BIBLIOTECA'
@ 9,6 PROMPT ">   INCLUIR LIBROS    <" MESSAGE 'INCLUYE UN LIBRO EN LA BASE DE DATOS'
@ 11,6 PROMPT ">   MODIFICAR DATOS   <" MESSAGE 'CAMBIA LOS DATOS DE UN LIBRO'
@ 13,6 PROMPT "> PRESTAMO DE LIBROS  <" MESSAGE 'CONTROLA EL PRESTAMO DE LOS LIBROS'
@ 15,6 PROMPT ">       SALIR         <" MESSAGE 'ABANDONA EL SISTEMA'
SET COLOR TO W+/B,GR+/R
MENU TO OPC
      DO CASE 
        CASE OPC = 1
            DO BUSQUEDA
        CASE OPC = 2
            DO INCLUIR
        CASE OPC = 3
            DO MODIF
        CASE OPC = 4
            DO PRESTAMO
        CASE OPC = 5
            DO SALIR 
            EXIT
       ENDCASE
ENDDO
CLOSE ALL
SET COLOR TO
CLEAR
SET TALK ON




PROCEDURE AYUDA
SAVE SCREEN TO PAN
COLOR_ACT=SETCOLOR()
SET COLOR TO N/BR
@ 7,11 CLEAR TO 17,70
SET COLOR TO GR+/R
@ 6,10 TO 16,69 DOUBLE
@ 7,11 CLEAR TO 15,68
IF AYU = 0
   @ 7,11 SAY "     Si selecciona > BUSQUEDA DE LIBROS < podr  ubicar un"
   @ 8,11 SAY " libro segun cualquier campo que desee."
   @ 9,11 SAY "     Si selecciona  > INCLUIR LIBROS <  podr  anexar a la"
   @ 10,11 SAY " base de dato un nuevo libro."
   @ 11,11 SAY "     Si selecciona > MODIFICAR DATOS <  podr  cambiar uno"
   @ 12,11 SAY " o m s campos, o cambiar los codigos."
   @ 15,11 SAY "     Si selecciona > SALIR < Concluir  el servicio."
   @ 13,11 SAY "     Al seleccionar >PRESTAMO DE LIBROS< se lleva un"
   @ 14,11 SAY " control sobre los libros prestados y entregados.       "
ENDIF
IF AYU = 1
   @ 7,11 SAY "         Para buscar un libro, deber  seleccionar la     "
   @ 8,11 SAY " opcion que desee. Por titulo, por codigo, por autor     "
   @ 9,11 SAY " o por materia, se deber  proporcionar el dato que se    "
   @ 10,11 SAY " pide para obtener todos los datos de ese libro.         "
   @ 11,11 SAY "         Si selecciona  LISTADO DE LIBROS FALTANTES,     "
   @ 12,11 SAY " obtendr  una lista de libros que estan anotados pero    "
   @ 13,11 SAY " no se encuentran en la Biblioteca.                      "
   @ 15,11 SAY " ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ<ENTER> PARA CONTINUARÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ"
ENDIF
IF AYU = 2
   @ 7,11 SAY "         Para buscar un libro, deber  colocar el Titulo  "
   @ 8,11 SAY " que desea buscar y obtendr  todas las  caracteristicas  "
   @ 9,11 SAY " que estan en la base de datos. El Titulo deber  escri-  "
   @ 10,11 SAY " birlo  correctamente y  completo, de  lo  contrario no  "
   @ 11,11 SAY " se conseguir  el libro.                                 " 
   @ 13,11 SAY "                                                        "
   @ 15,11 SAY "ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ<ENTER> PARA CONTINUARÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ"
ENDIF
 IF AYU = 3
   @ 7,11 SAY "         Para buscar un libro, deber  colocar el C¢digo  "
   @ 8,11 SAY " que desea buscar y obtendr  todas las  caracteristicas  "
   @ 9,11 SAY " que estan en la base de datos. El C¢digo deber  escri-  "
   @ 10,11 SAY " birlo  correctamente y  completo, de  lo  contrario no  "
   @ 11,11 SAY " se conseguir  el libro.                                 "
   @ 12,11 SAY "                                                        "
   @ 13,11 SAY "                                                        "
   @ 15,11 SAY "ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ<ENTER> PARA CONTINUARÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ"
ENDIF
 IF AYU = 4
   @ 7,11 SAY "         Para obtener un listado de libros por el  mismo "
   @ 8,11 SAY " Autor, deber  proporcionar el apellido del primer Autor "
   @ 9,11 SAY " que aparece  en los libros. El Apellido  deber   escri- "
   @ 10,11 SAY " birlo  correctamente y  completo, de  lo  contrario no  "
   @ 11,11 SAY " se emitir  el listado.                                  "
   @ 12,11 SAY "                                                        "
   @ 13,11 SAY "                                                        "
   @ 15,11 SAY "----------------<ENTER> PARA CONTINUAR------------------"
ENDIF
 IF AYU = 5
   @ 7,11 SAY "        Para buscar un libro, deber  colocar la Materia "
   @ 8,11 SAY " que desea buscar y obtendr  todas las  caracteristicas  "
   @ 9,11 SAY " que estan en la base de datos. La Materia deber  escri- "
   @ 10,11 SAY " birla  correctamente y  completa, de  lo  contrario no  "
   @ 11,11 SAY " se conseguir  el libro.                                 "
   @ 15,11 SAY "----------------<ENTER> PARA CONTINUAR------------------"
ENDIF
 IF AYU = 6
   @ 7,11 SAY "        Para INTRODUCIR un nuevo libro  a la  Biblioteca,"
   @ 8,11 SAY " introduzca  primero  el codigo  que  le va a asignar. El"
   @ 9,11 SAY " Sistema se encargar  de verificar que el libro no exista"
   @ 10,11 SAY " en la  Base de Datos  y  proceder  a  incluirlo. En caso"
   @ 11,11 SAY " que  el libro  ya est‚  en la  Base de datos, saldr   un"
   @ 12,11 SAY " mensaje de error en el centro de la pantalla."
   @ 13,11 SAY "   ......RECUERDE PRESIONAR <F1> DE VEZ EN CUANDO......  "
   @ 15,11 SAY "----------------<ENTER> PARA CONTINUAR------------------"
ENDIF
 IF AYU = 7
   @ 7,11 SAY "               Para MODIFICAR un libro de la  Biblioteca,"
   @ 8,11 SAY " introduzca  primero  el codigo  que  va a buscar    . El"
   @ 9,11 SAY " Sistema se encargar  de verificar que el libro  exista"
   @ 10,11 SAY " en la Base de Datos y llamar  sus datos para que Ud los"
   @ 11,11 SAY " modifique. Utilize las <FLECHAS> para colocarse en el   "
   @ 12,11 SAY " campo que va a modificar."
   @ 13,11 SAY "   ......RECUERDE PRESIONAR <F1> DE VEZ EN CUANDO......  "
   @ 15,11 SAY "----------------<ENTER> PARA CONTINUAR------------------"
ENDIF
 IF AYU = 8
   @ 7,11 SAY "         Para obtener un listado de libros con el  mismo "
   @ 8,11 SAY " TEMA , deber  proporcionar el Tema que desee listar. " 
   @ 10,11 SAY " lo contrario no se emitir  el listado.                "
   @ 11,11 SAY "                                                        "
   @ 12,11 SAY "                                                        "
   @ 13,11 SAY "                                                        "
   @ 15,11 SAY "----------------<ENTER> PARA CONTINUAR------------------"
ENDIF
IF AYU = 9
   @ 7,11 SAY '     Para buscar un libro por alguna palabra en el TITULO,'
   @ 8,11 SAY 'primero debe  indicar cuantas  letras tiene la  Palabra a '
   @ 9,11 SAY 'buscar. Por ejemplo: Para buscar los titulos que contengan'
   @ 10,11 SAY 'CAPITALISMO, debe indicar primero que tiene 11 letras. '
   @ 11,11 SAY '    Si le indica que tiene 4 letras, le buscar  todos los '
   @ 12,11 SAY 'Titulos que contengan las palabras CAPITAL, CAPITALISMO, '
   @ 13,11 SAY 'CAPITAN, CAPITULACION, etc. Se repiten las 4 primeras'
   @ 14,11 SAY 'letras de la palabra buscada.                             '
ENDIF
IF AYU = 10
   @ 7,11 SAY '     Para prestar un libro de la Biblioteca, Ud debe estar'
   @ 8,11 SAY 'inscrito en el CEELA. Introduzca los datos del libro y los'
   @ 9,11 SAY 'datos de Ud segun se le vaya pidiendo. Recuerde que si el '
   @ 10,11 SAY 'libro se encuentra prestado, no lo podra obtener hasta '
   @ 11,11 SAY 'que se devuelva. Para devolver un libro a la Biblioteca, '
   @ 12,11 SAY 'introduzca los datos que se piden y el libro sera descon-'
   @ 13,11 SAY 'tado de su cuenta. Recuerde que hay un maximo de 3 libros'
   @ 14,11 SAY 'que puede tener prestado al mismo tiempo.                '
ENDIF
WAIT""
SET COLOR TO &COLOR_ACT
RESTORE SCREEN FROM PAN
RETURN





PROCEDURE IMPRIME
SAVE SCREEN TO PAN2
COLOR_ACT2=SETCOLOR()
SET COLOR TO GR+/BR
IF IMPRIME = 3 .OR. IMPRIME = 4 .OR. IMPRIME = 5 .OR. IMPRIME = 11
     @ 11,11 CLEAR TO 15,65
     SET COLOR TO GR+/R,W+/B
     @ 10,10 CLEAR TO 14,64
     @ 10,10 TO 14,64 DOUBLE
     @ 12,12 SAY "DESEA IMPRIMIR LOS DATOS ANTERIORES?"
     @ 12,50 PROMPT "SI"
     @ 12,53 PROMPT "NO"
     MENU TO RESP
          DO CASE
             CASE RESP = 1
               SET DEVICE TO PRINT
               IF IMPRIME=3
                   P=1
                   DO FONPRIN 
                   @ 12,35 SAY "TITULO:"
                   @ 13,4 SAY CHR(27)+CHR(70)
                   @ 13,4 SAY TITULO
                   @ 15,4 SAY CHR(27)+CHR(69)
                   @ 15,4 SAY "AUTOR: "
                   @ 15,11 SAY CHR(27)+CHR(70)
                   @ 15,11 SAY AUTOR_NOM
                   @ 15,27 SAY AUTOR_APEL
                   @ 15,51 SAY CHR(27)+CHR(69)
                   @ 15,51 SAY "CODIGO: "
                   @ 15,59 SAY CHR(27)+CHR(70)
                   @ 15,59 SAY CODIGO
                   @ 17,4 SAY CHR(27)+CHR(69)
                   @ 17,4 SAY "MATERIA: "
                   @ 17,13 SAY CHR(27)+CHR(70)
                   @ 17,13 SAY MATERIA
                   @ 17,29 SAY CHR(27)+CHR(69)
                   @ 17,29 SAY "EDITORIAL: "
                   @ 17,40 SAY CHR(27)+CHR(70)
                   @ 17,40 SAY EDITORIAL
                   @ 19,4 SAY CHR(27)+CHR(69)
                   @ 19,4 SAY "A%O EDICION: "
                   @ 19,17 SAY CHR(27)+CHR(70)
                   @ 19,17 SAY ANO_ED
                   @ 19,35 SAY CHR(27)+CHR(69)
                   @ 19,35 SAY "CANTIDAD: "
                   @ 19,46 SAY CHR(27)+CHR(70)
                   @ 19,46 SAY CANTIDAD
                   @ 19,55 SAY CHR(27)+CHR(69)
                   @ 19,55 SAY "UBICACION: "
                   @ 19,66 SAY CHR(27)+CHR(70)
                   @ 19,66 SAY UBICACION
                   @ 21,4 SAY CHR(27)+CHR(69)
                   @ 21,4 SAY "OBSERVACION: "
                   @ 21,17 SAY CHR(27)+CHR(70)
                   @ 21,17 SAY OBSERVACIO
                   @ 22,4 SAY CHR(27)+CHR(69)
                   @ 23,5 SAY "-----------------------------------------------------------------------"
                   EJECT
               ENDIF
               IF IMPRIME=4
                  GO TOP
                  X=8
                  P=1
                  DO FONPRIN2
                  DO WHILE .T.
                      IF EOF()
                         @ X,3 SAY CHR(18)
                         @ X,4 SAY CHR(27)+CHR(80)
                         @ X,30 SAY "* * FIN DE LA CONSULTA * *"
                         @ X+1,5 SAY "-----------------------------------------------------------------------"
                         EXIT
                      ENDIF
                      IF AUTOR_APEL = AUT 
                          @ X,3 SAY CODIGO
                          @ X,13 SAY TITULO PICTURE "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX"
                          @ X,86 SAY AUTOR_NOM PICTURE "XXXXXXXXXXXXXXX"
                          @ X,104 SAY AUTOR_APEL PICTURE "XXXXXXXXXXXXXXX"
                          @ X,121 SAY UBICACION PICTURE "XXXXX"
                          @ X,131 SAY CANTIDAD
                          @ X,132 SAY CHR(18)
                         X=X+1
                         IF X>60
                            EJECT
                            P=P+1
                            DO FONPRIN2
                            X=8
                         ENDIF
                      ENDIF
                      SKIP
                  ENDDO
                  EJECT
               ENDIF
               IF IMPRIME = 5
                  GO TOP
                  X=8
                  P=1
                  DO FONPRIN2
                  DO WHILE .T.
                      IF EOF()
                         @ X,3 SAY CHR(18)
                         @ X,4 SAY CHR(27)+CHR(80)
                         @ X,30 SAY "* * FIN DE LA CONSULTA * *"
                         @ X+1,5 SAY "-----------------------------------------------------------------------"
                         EXIT
                      ENDIF
                      IF MATERIA = MAT
                          @ X,0 SAY CHR(15)
                          @ X,3 SAY CODIGO
                          @ X,13 SAY TITULO PICTURE "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX"
                          @ X,86 SAY AUTOR_NOM PICTURE "XXXXXXXXXXXXXXX"
                          @ X,104 SAY AUTOR_APEL PICTURE "XXXXXXXXXXXXXXX"
                          @ X,121 SAY UBICACION PICTURE "XXXXX"
                          @ X,131 SAY CANTIDAD
                          @ X,132 SAY CHR(18)
                        X=X+1
                         IF X>60
                            EJECT
                            P=P+1
                            DO FONPRIN2
                            X=8
                         ENDIF
                      ENDIF
                      SKIP
                  ENDDO
                  EJECT
               ENDIF
               IF IMPRIME = 11 
                  X=8
                  P=1
                  DO FONPRIN2
                  CON=0
                  DO WHILE .T.
                      IF EOF()
                         @ X,3 SAY CHR(18)
                         @ X,4 SAY CHR(27)+CHR(80)
                         @ X,30 SAY "* * FIN DE LA CONSULTA * *"
                         @ X+2,40 SAY "TOTAL DE LIBROS:"
                         @ X+2,72 SAY CON
                         @ X+3,5 SAY "-----------------------------------------------------------------------"
                         EXIT
                      ENDIF
                      IF CANTIDAD = 0
                          @ X,0 SAY CHR(15)
                          @ X,3 SAY CODIGO
                          @ X,13 SAY TITULO PICTURE "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX"
                          @ X,86 SAY AUTOR_NOM PICTURE "XXXXXXXXXXXXXXX"
                          @ X,104 SAY AUTOR_APEL PICTURE "XXXXXXXXXXXXXXX"
                          @ X,121 SAY UBICACION PICTURE "XXXXX"
                          @ X,131 SAY CANTIDAD
                          @ X,132 SAY CHR(18)
                         CON=CON+1
                         X=X+1
                         IF X>60
                            EJECT
                            P=P+1
                            DO FONPRIN2
                            X=8
                         ENDIF
                      ENDIF
                      SKIP
                  ENDDO

                  EJECT
               ENDIF
             SET DEVICE TO SCREEN
          ENDCASE
ELSE
     SET KEY -5 TO LISTAPRIN
     @ 11,11 CLEAR TO 15,65
     SET COLOR TO GR+/B,W+/B
     @ 10,10 CLEAR TO 14,64
     @ 10,10 TO 14,64 DOUBLE
     @ 12,12 SAY "<F6>  IMPRIME TODOS LOS LIBROS "
     MENSAJE="LISTADO GENERAL DE LIBROS"
     WAIT""
     IF LASTKEY()=27
         SET COLOR TO W+/B,GR+/R
     SET KEY -5 TO
     SET COLOR TO W+/B,GR+/R
     ENDIF
ENDIF
SET COLOR TO &COLOR_ACT2 
RETURN




PROCEDURE TIEMPO2
I=1
DO WHILE I<5000000
   I=I+1
ENDDO
RETURN




PROCEDURE SALE
SAVE SCREEN TO PAN3
COLOR_ACT3=SETCOLOR()
SET COLOR TO GR+/BR
@ 11,11 CLEAR TO 15,66
SET COLOR TO GR+/R
@ 10,10 CLEAR TO 14,65
@ 10,10 TO 14,65 DOUBLE
@ 12,12 SAY "ABANDONANDO EL SERVICIO ACTUAL (PULSE UNA TECLA)"
 WAIT''
 IF LASTKEY()<>27
    CLEAR ALL
    SET COLOR TO
    CLEAR
    BREAK
  ENDIF
SET COLOR TO &COLOR_ACT3
RESTORE SCREEN FROM PAN3
RETURN



PROCEDURE ACTUALIZA
SAVE SCREEN TO PAN4
COLOR_ACT4=SETCOLOR()
SET COLOR TO GR+/BR
@ 11,11 CLEAR TO 15,71
SET COLOR TO GR+/R
@ 10,10 CLEAR TO 14,70
@ 10,10 TO 14,70 DOUBLE
@ 12,12 SAY ' ESPERE,  ACTUALIZANDO LA BASE DE DATOS'
USE
USE BIBLIO3 INDEX LIBRO
SET COLOR TO &COLOR_ACT4
RESTORE SCREEN FROM PAN4
RETURN


PROCEDURE TIEMPO3
I=1
DO WHILE I<30000
   I=I+1
ENDDO
RETURN




PROCEDURE LISTA
SAVE SCREEN TO PAN5
COLOR_ACT=SETCOLOR()
SET COLOR TO G+/B
@ 10,30 CLEAR TO 15,39
@ 10,30 TO 15,39 DOUBLE
DO TIEMPO3
@ 9,26 CLEAR TO 16,43
@ 9,26 TO 16,43 DOUBLE
DO TIEMPO3
@ 8,22 CLEAR TO 17,49
@ 8,22 TO 17,49 DOUBLE
DO TIEMPO3
@ 7,19 CLEAR TO 18,55
@ 7,19 TO 18,55 DOUBLE
DO TIEMPO3
@ 6,15 CLEAR TO 19,60
@ 6,15 TO 19,60 DOUBLE
DO TIEMPO3
@ 5,11 CLEAR TO 20,65
@ 5,11 TO 20,65 DOUBLE
DO TIEMPO3
@ 4,7 CLEAR TO 21,70
@ 4,7 TO 21,70 DOUBLE
DO TIEMPO3
@ 3,4 CLEAR TO 22,76
@ 3,4 TO 22,76 DOUBLE
DO TIEMPO3
SET COLOR TO GR+/G
@ 21,5 SAY '       <ESC>REGRESAR                     <FLECHAS>MOVER CAMPOS         '
SET COLOR TO +W/B,GR+/R
COD=CODIGO
IF SEMAFORO=1
   SEEK COD
   DBEDIT(4,5,20,75)
ENDIF
IF SEMAFORO=0
  SET COLOR TO N/W
  @ 11,25 CLEAR TO 15,48
  @ 11,25 TO 15,48
  @ 13,27 SAY 'NO PUEDE VER ARCHIVOS'
  SET COLOR TO W+/B,GR+/R
  @ 0,78 SAY ' '
  WAIT''
ENDIF 
IF LASTKEY()<>27
*  IF AYU=3
   STORE CODIGO TO COD
*  ENDIF
*  IF AYU=4
     STORE AUTOR_APEL TO AUT
*  ENDIF
ENDIF
SET COLOR TO &COLOR_ACT
RESTORE SCREEN FROM PAN5
RETURN



PROCEDURE PROFE
SAVE SCREEN TO PAN6
SELE A
@ 3,4 CLEAR TO 21,76
@ 3,4 TO 21,76 DOUBLE
DBEDIT(4,5,20,75)
IF LASTKEY()<>27
    STORE CEDULA TO CED
ENDIF
SELE B
RESTORE SCREEN FROM PAN6

PROCEDURE CODIGOS
SAVE SCREEN TO PAN10
COLOR1=SETCOLOR()
SET COLOR TO N/BG
@ 0,56 SAY '<F6> CODIGOS'
@ 1,50 CLEAR TO 21,75
@ 1,50 TO 21,75 DOUBLE
@ 2,52 SAY '01 ANTROPOLOGIA'
@ 3,52 SAY '02 ECONOMIA'
@ 4,52 SAY '03 FILOSOFIA'
@ 5,52 SAY '04 SOCIOLOGIA'
@ 6,52 SAY '05 CIENCIAS POLITICAS'
@ 7,52 SAY '06 EDUCACION'
@ 8,52 SAY '07 CIENCIA Y TECNOLOGIA'
@ 9,52 SAY '08 OBRAS GENERALES'
@ 10,52 SAY '09 HISTORIA'
@ 11,52 SAY '10 LITERATURA'
@ 12,52 SAY '11 URBANISMO'
@ 13,52 SAY '12 CINE'
@ 14,52 SAY '30 REVISTAS'
@ 15,52 SAY '40 ANUARIOS'
@ 16,52 SAY '50 BOLETIN'
@ 17,52 SAY '60 TRABAJOS'
@ 18,52 SAY '70 INFORMES'
@ 19,52 SAY '80 CUADERNOS'
@ 20,52 SAY '90 DOCUMENTOS'
WAIT''
SET COLOR TO &COLOR1
RESTORE SCREEN FROM PAN10
RETURN



PROCEDURE FONDO
SET COLOR TO BG+/B
@ 0,0 CLEAR TO 0,79
@ 0,0 SAY '<F1>ACTU <F2>AYUDA <F3>IMPRIMIR <F4>LIBROS <F5>PRESTAMO <F6>CODIGOS <F8>SALIR'
SET COLOR TO B/W
@ 1,0 CLEAR TO 24,79
@ 2,2 say "janez0266**ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄCONTROL DE LIBROS EN BIBLIOTECA"
@ 23,45 SAY " REALIZADO POR: ING. JULIO C A¥EZ"
SET COLOR TO W+/B,GR+/R,W
@ 20,10 CLEAR TO 22,70
@ 20,10 TO 22,70
RETURN




PROCEDURE FONPRIN
@ 1,1 SAY CHR(27)+CHR(69)
@ 1,5 SAY "PAGINA:"
@ 1,13 SAY P
@ 1,65 SAY DATE()
@ 2,00 SAY CHR(27)+CHR(87)+CHR(49)
@ 2,01 SAY "             C. E. E. L. A."
@ 4,01 SAY "         SISTEMA DE BIBLIOTECA"
@ 4,00 SAY CHR(27)+CHR(87)+CHR(48) 
@ 10,20 SAY MENSAJE
@ 11,5 SAY "-----------------------------------------------------------------------"
@ 12,0 SAY CHR(27)+CHR(70)
@ 12,1 SAY CHR(27)+CHR(80)
RETURN





PROCEDURE FONPRIN2
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
@ 4,20 SAY MENSAJE
@ 5,5 SAY "-----------------------------------------------------------------------"
@ 6,1 SAY "CODIGO"
@ 6,15 SAY "TITULO"
@ 6,53 SAY "AUTOR"
@ 6,69 SAY "LUGAR"
@ 6,75 SAY "CANT"
@ 7,0 SAY CHR(27)+CHR(70)
RETURN




PROCEDURE LISTAPRIN
SAVE SCREEN TO PAN20
COLOR_ACT20=SETCOLOR()
SELE B
SET COLOR TO GR+/BR
@ 11,11 CLEAR TO 15,65
SET COLOR TO GR+/R,W+/B
@ 10,10 CLEAR TO 14,64
@ 10,10 TO 14,64 DOUBLE
RESP="N"
@ 12,12 SAY "ESTA SEGURO QUE QUIERE TODA LA LISTA? S/N"
@ 12,55 GET RESP PICTURE "!@"
READ
IF LASTKEY()=27
    SET COLOR TO W+/B,GR/R
ENDIF
IF RESP = "S"
   SET DEVICE TO PRIN
   P=1
   X=7 

  
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
         DO FONPRIN2
         @ 7,0 SAY CHR(27)+CHR(70)
       ENDIF
       SKIP
*       IF Y=80
*          EJECT
*          EXIT
*       ENDIF
    ENDDO
   SET DEVICE TO SCREEN
ENDIF
SET COLOR TO W+/B,GR+/R
SET COLOR TO &COLOR_ACT20
RESTORE SCREEN FROM PAN20
RETURN





PROCEDURE LISTASEL
SAVE SCREEN TO PAN21 
Y=1
P=1
X=7
SET DEVICE TO PRIN
MENSAJE = "        LISTA PERSONALIZADA"
DO FONPRIN2
DO WHILE .T.
SET DEVICE TO SCREEN
SET COLOR TO GR+/BR
@ 11,11 CLEAR TO 15,65
SET COLOR TO GR+/R,W+/B
@ 10,10 CLEAR TO 14,64
@ 10,10 TO 14,64 DOUBLE
COD=SPACE(5)
@ 12,12 SAY "INTRODUZCA EL CODIGO A IMPRIMIR"
@ 12,55 GET COD PICTURE "99999"
READ
SET DEVICE TO PRIN
IF COD=SPACE(5)
    @ X+2,20 SAY 'FIN DE LA LISTA'
    EJECT
    EXIT
ENDIF
   SEEK COD
   IF EOF()
     SET DEVICE TO SCREEN
     @ 12,12 SAY "NO EXISTE ESE CODIGO.    PULSE <ENTER>"
     WAIT""
     LOOP
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
         DO FONPRIN2
       ENDIF
ENDDO
SET DEVICE TO SCREEN
SET COLOR TO W+/B,GR+/R
SET COLOR TO &COLOR_ACT21
RESTORE SCREEN FROM PAN21
RETURN

 
PROCEDURE PAPEL
@ 1,0 CLEAR TO 5,79
@ 1,0 TO 5,79
@ 2,5 SAY "ESCRIBA LO QUE DESEE IMPRIMIR EN LA HOJA"
X=0
DO WHILE .T.
HOJA=SPACE(78)
@ 3,1 GET HOJA
READ
IF HOJA = SPACE(78)
     @ X,0 SAY CHR(27)+CHR(70)
     EXIT
ENDIF
SET DEVICE TO PRIN
@ X,0 SAY CHR(27)+CHR(69)
@ X,1 SAY HOJA
X=X+2
SET DEVICE TO SCREEN
ENDDO
RETURN



PROCEDURE SALIR
           SET COLOR TO
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
           @ 12,27 SAY "­GRACIAS POR UTILIZAR EL"
           @ 13,29 SAY "SISTEMA DE BIBLIOTECA!"
           L=1
           DO WHILE L<=5000
              L=L+1
           ENDDO
           SET COLOR TO
           CLEAR
           @ 9,17 SAY "     ÍÍ    ÍÍ  Í  Í ÍÍ   ÍÍ    Í   Í Í   Í"
           @ 10,17 SAY "ÉÍ     ÍÍÍR  ÍÍI A Í  Í Í  I Í ZÍ    RÍ Í  »"
           @ 11,17 SAY "      ­ G     C    PO  U    L     A"
           @ 12,17 SAY "  º        A     S   R  T     I       EL  º"
           @ 13,17 SAY " º            TE   D  INV   A I             º"
           @ 14,17 SAY "        S   S       E   EN T R   O  !"
           @ 15,17 SAY "  È    ÍÍ I ÍÍÍ MAÍ  Í      Í Í Í    ÍÍ   ÍÍ¼"
           @ 16,17 SAY "    ÍÍÍ  ÍÍÍ       ÍÍ   Í      Í Í ÍÍ"
           X=1
           FOR X=1 TO 500
           NEXT X
           @ 6,12 SAY "                Í      Í       Í    Í"
           @ 7,12 SAY "       Í Í       Í  Í     Í   N     ZÍ      RÍ   Í"
           @ 8,12 SAY " ÉÍ        ÍÍ           PÍ    Í         Í Í     Í    »"
           @ 9,12 SAY "                                I Í        A"
           @ 10,12 SAY "       ­      ÍR  ÍÍI A Í  Í Í        L            º"
           @ 11,12 SAY "  º        G       C     O  U    A            E"
           @ 12,12 SAY "       A              S   R              I        L"
           @ 13,12 SAY "           T     E      D  I   T     I                º"
           @ 14,12 SAY "º                        E                   !"
           @ 15,12 SAY "            ÍÍ I Í Í M Í     V     Í     O     Í    ¼"
           @ 16,12 SAY "          S    Í        Í    Í   R      ÍÍ        ÍÍ "
           @ 17,12 SAY "   È     ÍÍ      S  Í A    E  N     Í  "
           @ 18,12 SAY "     Í            Í                   Í     Í"
           @ 19,12 SAY "              Í          Í      T"
           @ 20,12 SAY "                        Í"
           X=1
           FOR X=1 TO 500
           NEXT X
           @ 4,8 SAY "                   Í          Í         Í     Í           Í"
           @ 5,8 SAY "      Í                    Í        Í       Í       Í"
           @ 6,8 SAY "                     Í     Í      Í                              R      »"
           @ 7,8 SAY "   Í    ­     Í         Í         N     ZÍ"
           @ 8,8 SAY "É            G     R        P     Í                      Í"
           @ 9,8 SAY "                                    I"
           @ 10,8 SAY "      A                   A               L         A    º"
           @ 11,8 SAY "  º           C     I        O       A"
           @ 12,8 SAY "                                                            º"
           @ 13,8 SAY "           E          S     D      T     I       I     E"
           @ 14,8 SAY "    º"
           @ 15,8 SAY "                 Í I             V     Í                 L    ¼"
           @ 16,8 SAY "         T     A                     R      Í       !Í"
           @ 17,8 SAY " È            Í         Í M             Í                Í"
           @ 18,8 SAY "                                              Í  O           Í"
           @ 19,8 SAY "           S       S         Í  N   T"
           @ 20,8 SAY "       Í     Í           E  Í             Í         Í"
           @ 21,8 SAY "              Í    Í"
           X=1
           FOR X=1 TO 500
           NEXT X
           CLEAR
           @ 2,2 SAY "                                  Í           Í            Í"
           @ 3,2 SAY "        Í"
           @ 4,2 SAY "              Í        Í     Í            Í    Z   Í                Í"
           @ 5,2 SAY "    Í                            Í     N"
           @ 6,2 SAY "           ­       G            P                           R           »"
           @ 7,2 SAY "                                           I      L"
           @ 8,2 SAY "É       A         R"
           @ 9,2 SAY "                          I                                        Í"
           @ 10,2 SAY "                                A                 I       A"
           @ 11,2 SAY "    º           E                          A                         º"
           @ 12,2 SAY ""
           @ 13,2 SAY "                                                       I       E"
           @ 14,2 SAY "       º"
           @ 15,2 SAY "                         I                                             º"
           @ 16,2 SAY "               T"
           @ 17,2 SAY "                                M                   R            L"
           @ 18,2 SAY "   È                                                                     ¼"
           @ 19,2 SAY "                 S       S                T   Í           !"
           @ 20,2 SAY "                               E                    Í              Í"
           @ 21,2 SAY "        Í                              Í"
           @ 22,2 SAY "                     Í            Í                         Í"
           @ 23,2 SAY "               Í            Í                Í"
           X=1
           FOR X=1 TO 500
           NEXT X
           CLEAR
           @ 2,6 SAY "                              Í           Í            Í"
           @ 3,6 SAY "    Í"
           @ 4,6 SAY "          Í              Í                 Z                    Í"
           @ 6,6 SAY "               G            P                                       »"
           @ 7,6 SAY "                                       I"
           @ 8,6 SAY "    A"
           @ 10,6 SAY "                            A                         A"
           @ 11,6 SAY "º                                      A"
           @ 12,6 SAY "                                                   I"
           @ 13,6 SAY "   º"
           @ 14,6 SAY "                                                                   º"
           @ 16,6 SAY "                            M                                L"
           @ 17,6 SAY "                                                                     ¼"
           @ 18,6 SAY "             S                        T"
           @ 20,6 SAY "    Í"
           @ 21,6 SAY "                                                        Í"
           @ 22,6 SAY "           Í            Í                Í"
           X=1
           FOR X=1 TO 500
           NEXT X
           CLEAR
*           RUN CD\
*           CLEAR
           QUIT

