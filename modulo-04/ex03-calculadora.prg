FUNCTION Main()
    LOCAL cValA := "", cValB := "", cOp := ""
    LOCAL nA := 0, nB := 0

    QOut("=== CALCULADORA ===")

    //Lendo o primeiro numero
    ACCEPT "Digite o 1o valor (A): " TO cValA
    nA := Val(cValA)

    //Lendo a operacao
    QOut("Operacoes validas: + (Soma), - (Sub), * (Mult), / (Div), ^ (Potencia), R (Raiz Quadrada)")
    ACCEPT "Escolha a operacao: " TO cOp

    //A raiz quadrada so precisa de UM numero!
    //Entao so vamos pedir o segundo numero se a operacao NAO for "R".
    //Usamos Upper() para transformar a letra em maiuscula caso o usuario digite "r".
    IF Upper(cOp) != "R"
        ACCEPT "Digite o 2o valor (B): " TO cValB
        nB := Val(cValB)
    ENDIF

    QOut("--- RESULTADO ---")

    DO CASE
        CASE cOp == "+"
            QOut("Soma: " + AllTrim(Str(nA + nB, 10, 2)))
            
        CASE cOp == "-"
            QOut("Subtracao: " + AllTrim(Str(nA - nB, 10, 2)))
        CASE cOp == "*"
            QOut("Multiplicacao: " + AllTrim(Str(nA * nB, 10, 2)))
            
        CASE cOp == "/"
            //Tratamento contra divisao por zero
            IF nB == 0
                QOut("Erro: Divisao por zero nao e permitida!")
            ELSE
                QOut("Divisao: " + AllTrim(Str(nA / nB, 10, 2)))
            ENDIF
            
        CASE cOp == "^"
            QOut("Potencia: " + AllTrim(Str(nA ^ nB, 10, 2 )))
            
        CASE Upper(cOp) == "R"
            //Raiz Quadrada usando Sqrt()
            QOut("Raiz Quadrada de " + AllTrim(Str(nA)) + ": " + AllTrim(Str(Sqrt(nA), 10, 2)))
            
        OTHERWISE
            // Bloco padrao para opcoes invalidas
            QOut("Erro: Operacao invalida! (" + cOp + ")")
            
    ENDCASE

RETURN NIL