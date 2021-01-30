                @ 10,4 CLEAR TO 18,75
                SET COLOR TO +W/B
                @ 10,51 SAY "CODIGO: "
                @ 10,4 SAY "AUTOR: "
                @ 12,4 SAY "MATERIA: "
                @ 12,29 SAY "EDITORIAL: "
                @ 14,4 SAY "A¥O EDICION: "
                @ 14,35 SAY "CANTIDAD: "
                @ 14,55 SAY "UBICACION: "
                @ 16,4 SAY "OBSERVACION: "
                SET COLOR TO GR+/B
                @ 5,5 CLEAR TO 5,70
                @ 8,6 SAY TITULO
                @ 10,59 SAY CODIGO
                @ 10,11 SAY AUTOR_NOM
                @ 10,27 SAY AUTOR_APEL
                @ 12,13 SAY MATERIA
                @ 12,40 SAY EDITORIAL
                @ 14,17 SAY ANO_ED
                @ 14,46 SAY CANTIDAD
                @ 14,66 SAY UBICACION
                @ 16,17 SAY OBSERVACIO
                I = "0"
                SET COLO TO G+/B
                @ 18,10 SAY "* * * PRESIONE ENTER PARA CONTINUAR * * * <F3>PARA IMPRIMIR"
                WAIT ""
                I = "0"
            RETURN
