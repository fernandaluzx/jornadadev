FUNCTION Main()
    LOCAL aNumeros := {}
    LOCAL nI := 0

    QOut("==== BUBBLE SORT ====")
    QOut("")

    //Preenche o array com 10 n£meros aleat¢rios (de 1 a 100)
    FOR nI := 1 TO 10
        AAdd(aNumeros, HB_RandomInt(1, 100))
    NEXT

    //Exibe o array original bagunáado
    QOut("--- Array Original ---")
    FOR nI := 1 TO Len(aNumeros)
        //Usamos QQOut para imprimir na mesma linha
        QQOut(AllTrim(Str(aNumeros[nI])) + "  ") 
    NEXT
    QOut("")

    //Chama a nossa funá∆o para ordenar o array
    BubbleSort(aNumeros)

    //Exibe o array ordenado
    QOut("")
    QOut("--- Array Ordenado (Bubble Sort) ---")
    FOR nI := 1 TO Len(aNumeros)
        QQOut(AllTrim(Str(aNumeros[nI])) + "  ")
    NEXT
    QOut("")
    QOut("")

RETURN NIL

//FUNÄ«O BUBBLE SORT
FUNCTION BubbleSort(aVetor)
    LOCAL nI := 0
    LOCAL nJ := 0
    LOCAL nTemp := 0
    LOCAL nTamanho := Len(aVetor)

    //Loop externo: controla a quantidade de passagens pelo array
    FOR nI := 1 TO nTamanho - 1
        
        //Loop interno: compara os vizinhos
        //Subtra°mos 'nI' porque a cada passagem o maior n£mero j† foi para o final
        FOR nJ := 1 TO nTamanho - nI
            
            //Se o n£mero atual for MAIOR que o pr¢ximo, eles trocam de posiá∆o
            IF aVetor[nJ] > aVetor[nJ + 1]
                
                //Usa a vari†vel tempor†ria para n∆o perder o valor original
                nTemp := aVetor[nJ]
                aVetor[nJ] := aVetor[nJ + 1]
                aVetor[nJ + 1] := nTemp
                
            ENDIF
        NEXT
    NEXT

RETURN NIL