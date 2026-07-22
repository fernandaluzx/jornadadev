//Importa a biblioteca de fun‡äes de estoque
SET PROCEDURE TO estoque_lib.prg

FUNCTION Main()
    LOCAL aEstoque := {} //Array principal multidimensional
    LOCAL cOpcao := ""
    LOCAL nOpcao := 0
    LOCAL cCodigo := "", nCodigo := 0
    LOCAL cNome := ""
    LOCAL cQtd := "", nQtd := 0
    LOCAL cPreco := "", nPreco := 0
    LOCAL nPosicao := 0

    WHILE .T.
        QOut("")
        QOut("==== CONTROLE DE ESTOQUE SIMPLIFICADO ====")
        QOut("1 - Cadastrar produto")
        QOut("2 - Listar produtos")
        QOut("3 - Entrada de estoque")
        QOut("4 - Saida de estoque")
        QOut("5 - Buscar produto por codigo")
        QOut("6 - Relatorio: valor em estoque")
        QOut("0 - Sair")
        QOut("========================================")
        ACCEPT "Escolha uma opcao: " TO cOpcao
        nOpcao := Val(cOpcao)

        DO CASE
            CASE nOpcao == 1
                ACCEPT "Codigo do Produto: " TO cCodigo
                nCodigo := Val(cCodigo)
                
                //Valida se j  existe
                IF BuscarProduto(aEstoque, nCodigo) > 0
                    QOut("-> ERRO: Codigo ja cadastrado!")
                ELSE
                    ACCEPT "Nome do Produto: " TO cNome
                    ACCEPT "Quantidade Inicial: " TO cQtd
                    nQtd := Val(cQtd)
                    ACCEPT "Preco Unitario: " TO cPreco
                    nPreco := Val(cPreco)
                    
                    CadastrarProduto(aEstoque, nCodigo, cNome, nQtd, nPreco)
                    QOut("-> Produto cadastrado com sucesso!")
                ENDIF

            CASE nOpcao == 2
                QOut("")
                QOut("--- LISTA DE PRODUTOS ---")
                ListarProdutos(aEstoque)

            CASE nOpcao == 3
                ACCEPT "Codigo do produto para entrada: " TO cCodigo
                nCodigo := Val(cCodigo)
                nPosicao := BuscarProduto(aEstoque, nCodigo)
                
                IF nPosicao > 0
                    ACCEPT "Quantidade a adicionar: " TO cQtd
                    nQtd := Val(cQtd)
                    EntradaEstoque(aEstoque, nPosicao, nQtd)
                    QOut("-> Entrada registrada! Saldo atualizado.")
                ELSE
                    QOut("-> ERRO: Produto nao encontrado!")
                ENDIF

            CASE nOpcao == 4
                ACCEPT "Codigo do produto para saida: " TO cCodigo
                nCodigo := Val(cCodigo)
                nPosicao := BuscarProduto(aEstoque, nCodigo)
                
                IF nPosicao > 0
                    ACCEPT "Quantidade a retirar: " TO cQtd
                    nQtd := Val(cQtd)
                    
                    IF SaidaEstoque(aEstoque, nPosicao, nQtd)
                        QOut("-> Saida registrada! Saldo atualizado.")
                    ELSE
                        QOut("-> ERRO: Saldo insuficiente em estoque!")
                    ENDIF
                ELSE
                    QOut("-> ERRO: Produto nao encontrado!")
                ENDIF

            CASE nOpcao == 5
                ACCEPT "Digite o codigo para busca: " TO cCodigo
                nCodigo := Val(cCodigo)
                nPosicao := BuscarProduto(aEstoque, nCodigo)
                
                IF nPosicao > 0
                    QOut("-> PRODUTO ENCONTRADO na linha " + AllTrim(Str(nPosicao)))
                    QOut("Nome: " + aEstoque[nPosicao][2] + " | Saldo: " + AllTrim(Str(aEstoque[nPosicao][3])))
                ELSE
                    QOut("-> Produto nao encontrado (Retorno da busca: 0).")
                ENDIF

            CASE nOpcao == 6
                QOut("")
                QOut("--- RELATORIO DE VALORES ---")
                RelatorioEstoque(aEstoque)

            CASE nOpcao == 0
                QOut("Encerrando o sistema...")
                EXIT

            OTHERWISE
                QOut("-> ERRO: Opcao invalida! Tente novamente.")
        ENDCASE
    ENDDO

RETURN NIL