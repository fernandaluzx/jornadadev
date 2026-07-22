//Função para buscar a posição do produto no array
FUNCTION BuscarProduto(aEstoque, nCodigo)
    LOCAL nI := 0
    FOR nI := 1 TO Len(aEstoque)
        IF aEstoque[nI][1] == nCodigo
            RETURN nI //Retorna a linha onde achou
        ENDIF
    NEXT
RETURN 0 //Retorna 0 se não encontrar

//Função para cadastrar novo produto
FUNCTION CadastrarProduto(aEstoque, nCodigo, cNome, nQtd, nPreco)
    AAdd(aEstoque, {nCodigo, cNome, nQtd, nPreco})
RETURN NIL

//Função para listar todos os produtos
FUNCTION ListarProdutos(aEstoque)
    LOCAL nI := 0
    IF Len(aEstoque) == 0
        QOut("-> Estoque vazio!")
        RETURN NIL
    ENDIF
    
    FOR nI := 1 TO Len(aEstoque)
        QOut("Cod: " + AllTrim(Str(aEstoque[nI][1])) + " | Nome: " + aEstoque[nI][2] + " | Qtd: " + AllTrim(Str(aEstoque[nI][3])) + " | Preco: R$ " + AllTrim(Str(aEstoque[nI][4], 10, 2)))
    NEXT
RETURN NIL

//Função para entrada (aumentar) o estoque
FUNCTION EntradaEstoque(aEstoque, nPosicao, nQtdAdicional)
    aEstoque[nPosicao][3] := aEstoque[nPosicao][3] + nQtdAdicional
RETURN NIL

//Função para saída (diminuir) o estoque com validação
FUNCTION SaidaEstoque(aEstoque, nPosicao, nQtdSaida)
    IF aEstoque[nPosicao][3] >= nQtdSaida
        aEstoque[nPosicao][3] := aEstoque[nPosicao][3] - nQtdSaida
        RETURN .T. // Sucesso
    ENDIF
RETURN .F. //Falha (estoque insuficiente)

//Função para gerar o relatório de valores
FUNCTION RelatorioEstoque(aEstoque)
    LOCAL nI := 0
    LOCAL nSubTotal := 0
    LOCAL nTotalGeral := 0
    
    IF Len(aEstoque) == 0
        QOut("-> Estoque vazio!")
        RETURN NIL
    ENDIF

    FOR nI := 1 TO Len(aEstoque)
        nSubTotal := aEstoque[nI][3] * aEstoque[nI][4]
        nTotalGeral := nTotalGeral + nSubTotal
        QOut(aEstoque[nI][2] + " -> " + AllTrim(Str(aEstoque[nI][3])) + " un. x R$ " + AllTrim(Str(aEstoque[nI][4], 10, 2)) + " = R$ " + AllTrim(Str(nSubTotal, 10, 2)))
    NEXT
    
    QOut("------------------------")
    QOut("TOTAL GERAL EM ESTOQUE: R$ " + AllTrim(Str(nTotalGeral, 10, 2)))
RETURN NIL