REQUEST HB_CODEPAGE_PT850

FUNCTION MAIN() //As vari veis ficam sempre no topo
LOCAL nPreco := 99
LOCAL nDesconto := 0
LOCAL nTotal := 0

IF nPreco > 250 //Se for maior que 250, aplica 25% e ignora o resto
   nDesconto := nPreco * 0.25 

ELSEIF   nPreco > 100 //Se NÇO for maior que 250, mas for maior que 100, aplica 10%
   nDesconto := nPreco * 0.10

ENDIF 

   nTotal := nPreco - nDesconto

   
QOut("[TOTVS STORE] Desconto aplicado de: R$" + str(nDesconto))
QOut("[TOTVS STORE] Total a pagar: R$" + str(nTotal))

RETURN NIL