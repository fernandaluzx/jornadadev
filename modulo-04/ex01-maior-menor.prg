FUNCTION Main()
   
    LOCAL cVal1 := "", cVal2 := ""
    LOCAL nVal1 := 0, nVal2 := 0

    QOut("=== MAIOR, MENOR OU IGUAIS ===")
    
    ACCEPT "Digite o primeiro numero: " TO cVal1
    nVal1 := Val(cVal1)

    ACCEPT "Digite o segundo numero: " TO cVal2
    nVal2 := Val(cVal2)

    //DICA DA APOSTILA: Tratar primeiro o caso "iguais"
    IF nVal1 == nVal2
        QOut("Resultado: Os dois numeros sao IGUAIS!")
        
    //Se n∆o forem iguais, usamos o ELSEIF para testar quem Ç o maior
    ELSEIF nVal1 > nVal2
        QOut("O MAIOR numero e: " + AllTrim(Str(nVal1)))
        QOut("O MENOR numero e: " + AllTrim(Str(nVal2)))
        
    //Se n∆o s∆o iguais e o 1 n∆o Ç maior que o 2, s¢ sobra uma opá∆o
    ELSE
        QOut("O MAIOR numero e: " + AllTrim(Str(nVal2)))
        QOut("O MENOR numero e: " + AllTrim(Str(nVal1)))
        
    ENDIF

RETURN NIL