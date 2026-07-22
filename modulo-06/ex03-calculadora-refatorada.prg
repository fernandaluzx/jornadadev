FUNCTION Main()
    LOCAL nNum1, nNum2, cOperacao
    LOCAL xResultado //Usamos 'x' como prefixo porque pode receber N£mero ou L¢gico (.F.)

    QOut("==== CALCULADORA REFATORADA ====")
    QOut("")

    //A Main() se lˆ quase como uma receita passo a passo
    nNum1     := LerNumero("Digite o primeiro numero: ")
    cOperacao := LerOperacao()
    nNum2     := LerNumero("Digite o segundo numero: ")

    xResultado := Calcular(nNum1, nNum2, cOperacao)

    //Se xResultado for do tipo L¢gico (L) e for Falso (.F.), deu erro na opera‡Æo
    IF ValType(xResultado) == "L" .AND. xResultado == .F.
        QOut("-> ERRO: Divisao por zero ou operacao invalida!")
    ELSE
        MostrarResultado(xResultado)
    ENDIF

RETURN NIL

FUNCTION LerNumero(cMensagem)
    LOCAL cEntrada := ""
    ACCEPT cMensagem TO cEntrada
RETURN Val(cEntrada)

//Fun‡Æo: Lˆ o s¡mbolo da opera‡Æo matem tica
FUNCTION LerOperacao()
    LOCAL cOp := ""
    ACCEPT "Digite a operacao (+, -, *, /): " TO cOp
RETURN cOp

//Fun‡Æo: Realiza o c lculo usando DO CASE
FUNCTION Calcular(nA, nB, cOp)
    LOCAL nRetorno := 0

    DO CASE
        CASE cOp == "+"
            nRetorno := nA + nB
        CASE cOp == "-"
            nRetorno := nA - nB
        CASE cOp == "*"
            nRetorno := nA * nB
        CASE cOp == "/"
            //Trata a divisÆo por zero devolvendo .F.
            IF nB == 0
                RETURN .F. 
            ENDIF
            nRetorno := nA / nB
        OTHERWISE
            RETURN .F. //Retorna falso caso o usu rio digite um s¡mbolo inv lido
    ENDCASE

RETURN nRetorno

//Procedimento: Exibe o resultado formatado
PROCEDURE MostrarResultado(nValor)
    QOut("")
    QOut("-> O resultado da operacao e: " + AllTrim(Str(nValor)))
RETURN