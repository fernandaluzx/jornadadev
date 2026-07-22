FUNCTION Main()
    LOCAL aCarrinho := {} //Nosso array principal vazio
    LOCAL cNome := ""
    LOCAL cPreco := ""
    LOCAL nPreco := 0
    LOCAL cContinuar := ""
    LOCAL nI := 0
    LOCAL nTotal := 0

    QOut("==== MINI-CARRINHO DE COMPRAS ====")

    // 1. Loop infinito para adicionar quantos produtos o usu rio quiser
    WHILE .T.
        QOut("")
        ACCEPT "Nome do produto: " TO cNome
        ACCEPT "Preco do produto: " TO cPreco
        nPreco := Val(cPreco)

        //Adiciona um array interno { nome, preco } na pr¢xima "linha" do carrinho
        AAdd(aCarrinho, {cNome, nPreco})

        QOut("")
        ACCEPT "Deseja adicionar outro produto? (S/N): " TO cContinuar
        
        //Se a resposta for diferente de S (ou s), quebra o loop
        IF Upper(AllTrim(cContinuar)) != "S"
            EXIT
        ENDIF
    ENDDO

    //Processamento e Exibi‡Æo
    QOut("")
    QOut("=== RESUMO DA COMPRA ===")
    QOut("Itens no carrinho: " + AllTrim(Str(Len(aCarrinho))))
    QOut("------------------------" )

    //Percorre o carrinho para listar os itens e somar o total
    FOR nI := 1 TO Len( aCarrinho )
        QOut("-> " + aCarrinho[nI][1] + " | R$ " + AllTrim(Str(aCarrinho[nI][2], 10, 2)))
        
        //Vai acumulando o valor na vari vel do total
        nTotal := nTotal + aCarrinho[nI][2]
    NEXT

    QOut("------------------------")
    QOut("TOTAL A PAGAR: R$ " + AllTrim(Str(nTotal, 10, 2)))
    QOut("========================")

RETURN NIL