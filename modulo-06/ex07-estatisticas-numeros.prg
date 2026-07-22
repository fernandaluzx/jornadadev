FUNCTION Main()
    // Inicializa o array vazio
    LOCAL aNumeros := {}
    LOCAL nI := 0
    LOCAL nNum := 0
    LOCAL nSoma := 0
    LOCAL nMedia := 0
    LOCAL nMenor := 0
    LOCAL nMaior := 0
    LOCAL cEntrada := ""

    QOut("==== ESTATISTICAS DE 10 NUMEROS ====")
    QOut("")

    //Loop para ler 10 n£meros e armazen -los no array
    FOR nI := 1 TO 10
        ACCEPT "Digite o " + AllTrim(Str(nI)) + "o numero: " TO cEntrada
        nNum := Val(cEntrada)
        
        //AADD adiciona o valor no final do array
        AAdd(aNumeros, nNum)
        
        //Aproveitamos o loop para ir acumulando a soma
        nSoma := nSoma + nNum 
    NEXT

    //Ordena o array em ordem crescente
    ASort( aNumeros )

    //Calcula a m‚dia
    nMedia := nSoma / Len(aNumeros)

    //O menor ‚ o primeiro, o maior ‚ o £ltimo (ap¢s ASORT)
    nMenor := aNumeros[1]
    nMaior := aNumeros[Len(aNumeros)]

    //EXIBI€ÇO DOS DADOS
    QOut("")
    QOut("--- RESULTADOS ---")
    QOut("Numeros em ordem crescente:")
    
    //Loop para percorrer o array e exibir os itens
    FOR nI := 1 TO Len(aNumeros)
        QOut("-> " + AllTrim(Str(aNumeros[nI])))
    NEXT

    QOut("")
    QOut("Soma:  " + AllTrim(Str(nSoma)))
    QOut("Media: " + AllTrim(Str(nMedia, 10, 2)))
    QOut("Menor: " + AllTrim(Str(nMenor)))
    QOut("Maior: " + AllTrim(Str(nMaior)))

RETURN NIL